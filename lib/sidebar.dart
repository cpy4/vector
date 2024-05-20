import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    super.key,
    required SidebarXController controller,
  }) : _controller = controller;

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.inversePrimary;
    final canvasColor = Theme.of(context).canvasColor;
    final scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    final accentCanvasColor = Theme.of(context).colorScheme.tertiary;
    const white = Colors.white;
    final actionColor = Theme.of(context).hoverColor;
    final divider = Divider(color: white.withOpacity(0.3), height: 1);
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: primaryColor,
        //textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: primaryColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: actionColor.withOpacity(0.37),
          ),
          gradient: LinearGradient(
            colors: [scaffoldBackgroundColor, primaryColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      // footerDivider: divider,
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Vector.ai',
                style: TextStyle(
                  fontFamily: 'Exo',
                  // fontStyle: 'bold',
                ),
              )),
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.edit_document,
          label: 'Documents',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.chat_rounded,
          label: 'Chat',
        ),
        const SidebarXItem(
          icon: Icons.people,
          label: 'People',
        ),
        const SidebarXItem(
          icon: Icons.favorite,
          label: 'Favorites',
        ),
        const SidebarXItem(
          iconWidget: FlutterLogo(size: 20),
          label: 'Flutter',
        ),
      ],
    );
  }
}
