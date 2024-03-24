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
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              // leading: const Icon(Icons.message),
              title: const Text('Select folder'),
              onTap: () {
                _selectFolderPressHandler(context);
              },
            ),
            ListTile(
              // leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                // setState(() {
                //   selectedPage = 'Profile';
                // });
              },
            ),
            ListTile(
              // leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // setState(() {
                //   selectedPage = 'Settings';
                // });
              },
            ),
          ],
        ),
      );
  }
}