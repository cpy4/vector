import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:cross_file/cross_file.dart';
import 'package:langchain/langchain.dart';
import 'package:langchain_openai/langchain_openai.dart';
import 'package:langchain_supabase/langchain_supabase.dart' as sbv;
import 'package:flutter_gpt_tokenizer/flutter_gpt_tokenizer.dart';
import 'package:collection/collection.dart';

class DragTarget extends StatefulWidget {
  // String supabaseUrl;
  // String supabaseApiKey;
  final void Function() uploadCallback;
  const DragTarget({
    Key? key,
    required this.uploadCallback,
    //required this.supabaseUrl,
    //required this.supabaseApiKey,
  }) : super(key: key);

  @override
  DragTargetState createState() => DragTargetState();
}

class DragTargetState extends State<DragTarget> {
  final List<XFile> _list = [];
  DragTargetState();
  bool _dragging = false;

  Offset? offset;

  final llm = ChatOpenAI(apiKey: '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');

  final embeddings = OpenAIEmbeddings(apiKey: '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');

  Future<int> countTokens(String text) async {
    final int tokenCount = await Tokenizer().count(text, modelName: 'gpt-4-*');
    return tokenCount;
  }

  void uploadCallbackFunc() {
    widget.uploadCallback();
  }

  @override
  Widget build(BuildContext context) {

    final vectorStore = sbv.Supabase(
      tableName: 'documents_vecs',
      embeddings: embeddings,
      supabaseUrl: 'https://dpurcsaehzohnppjzlxz.supabase.co',
      supabaseKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwdXJjc2FlaHpvaG5wcGp6bHh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTkwNDIsImV4cCI6MjAyNzA3NTA0Mn0.MdwLosdYtk6ggKbDI2el0OwZr46A3RAiDdljkE0ZXfk',
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropTarget(
          onDragDone: (detail) async {
            setState(() {
              _list.addAll(detail.files);
            });
            //List<Document> docs = [];
            debugPrint('onDragDone:');
            for (final file in detail.files) {
              final filePath = file.path;
              final loader = TextLoader(filePath);
              //final stream = loader.lazyLoad();
              final docs = await loader.load();
              //await for (var document in stream) {
              const textSplitter = RecursiveCharacterTextSplitter(
                chunkSize: 32000,
                chunkOverlap: 0,
              );
              print(docs);
              final texts = textSplitter.splitDocuments(docs);
              final textsWithSources = texts
                  .mapIndexed(
                    (final i, final d) => d.copyWith(
                      metadata: {
                        ...d.metadata,
                        'source': '$i-pl',
                      },
                    ),
                  )
                  .toList(growable: false);
              await vectorStore.addDocuments(
                documents: textsWithSources,
              );
            }
            widget.uploadCallback();
          },
          onDragUpdated: (details) {
            setState(() {
              offset = details.localPosition;
            });
          },
          onDragEntered: (detail) {
            setState(() {
              _dragging = true;
              offset = detail.localPosition;
            });
          },
          onDragExited: (detail) {
            setState(() {
              _dragging = false;
              offset = null;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: _dragging ? Colors.blueGrey.withOpacity(0.7) : Colors.blueGrey,
            ),
            //color: _dragging ? Colors.blue.withOpacity(0.4) : Colors.black26,
            child: Stack(
              children: [
                if (_list.isEmpty)
                  const Center(child: Text("Upload Files"))
                else
                  Text(_list.map((e) => e.path).join("\n")),
                if (offset != null)
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '$offset',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: IconButton(
            color: Color(0xFFff9800),
            iconSize: 40.0,
            onPressed: widget.uploadCallback,
            icon: const Icon(Icons.cancel),
          ),
        ),
      ],
    );
  }
}
