import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'sidebar.dart';
import 'documents.dart';
import 'filedrop.dart' as filedrop;
import 'chat.dart' as chatScreen;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  //final SupabaseClient supabaseClient;
  //final llm;
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

// Notice how instead of "State", we are extending "ConsumerState".
// This uses the same principle as "ConsumerWidget" vs "StatelessWidget".
class _HomePageState extends ConsumerState<HomePage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  bool upload = false;
//ref.watch()
  void updateUpload(bool value) {
    setState(() {
      upload = value;
    });
  }

  void uploadToFalse() {
    setState(() {
      upload = false;
    });
  }

  void uploadToTrue() {
    setState(() {
      upload = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    //final secret = ref.watch(secretProvider);
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
      backgroundColor: theme.scaffoldBackgroundColor,
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
                        'title',
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
