import 'package:flutter/material.dart';

import '../../../services/services.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _selectFolderPressHandler(BuildContext context) {
    print('AppDrawer->selectFolderPressHandler()');

    Navigator.pop(context);

    Services.get().playerService.example();
  }

  @override
  Widget build(BuildContext context) {
    final t = Services.get().translationService.translation();

    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              child: Text(
                t("AppDrawer_title"),
                style: const TextStyle(
                  // color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              // leading: const Icon(Icons.message),
              title: Text(t("AppDrawer_selectFolder")),
              onTap: () {
                _selectFolderPressHandler(context);
              },
            ),
          ],
        ),
      );
  }
}