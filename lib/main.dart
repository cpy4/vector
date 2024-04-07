import 'package:flutter/material.dart';
//import 'db.dart' as db;
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:sidebarx/sidebarx.dart';
import 'sidebar.dart';
import 'documents.dart';
import 'filedrop.dart' as filedrop;
import 'chat.dart' as chatScreen;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://dpurcsaehzohnppjzlxz.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwdXJjc2FlaHpvaG5wcGp6bHh6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE0OTkwNDIsImV4cCI6MjAyNzA3NTA0Mn0.MdwLosdYtk6ggKbDI2el0OwZr46A3RAiDdljkE0ZXfk',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vector.ai',
      home: HomePage(),
    );
  }
}
// TODO Win at life

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  bool upload = false;
  void updateUpload(bool value) {
    setState(() {
      upload = value;
    });
  }

  void uploadToFalse() {
    setState(() {
      upload = false;
    });
    print('I did it!');
  }

  void uploadToTrue() {
    setState(() {
      upload = true;
    });
    print('I did it!!!');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      /* floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: _controller.extended ? 100.0 : 0.0),
        child: Container(
          height: 40,
          width: 150,
          child: FloatingActionButton(
            backgroundColor: upload ? Colors.blueGrey : Colors.blueGrey,
            onPressed: () {
              updateUpload(upload ? false : true);
            }, 
            child: upload
                ? Icon(Icons.cancel_outlined, size: 40)
                : Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ), 
          ),
        ),
      ),*/
      backgroundColor: Color(0xFFF5F5F5),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ExampleSidebarX(
            controller: _controller,
          ),
          Expanded(
            child: Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  // final pageTitle = _getTitleByIndex(controller.selectedIndex);
                  switch (_controller.selectedIndex) {
                    case 0:
                      return upload
                          ? filedrop.DragTarget(uploadCallback: uploadToFalse)
                          : DocsScreen(
                              controller: _controller,
                              callback: uploadToTrue,
                            );
                    case 1:
                      return const chatScreen.ChatScreen();
                    default:
                      return Text(
                        'pageTitle',
                        style: theme.textTheme.headlineSmall,
                      );
                  }
                },
              ),
            ),
          ), //DocsScreen(controller: _controller)))
        ],
      ),
    );
  }
}
