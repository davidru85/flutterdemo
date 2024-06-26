import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/platform_utils.dart';
import 'package:myapp/presentation/pages/about_page.dart';
import 'package:myapp/presentation/pages/breeds_page.dart';
import 'package:myapp/presentation/pages/my_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return (PlatformUtils.isApple)
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: const Text('Home'),
              leading: GestureDetector(
                onTap: () => _showCupertinoDrawer(context),
                child: const Icon(CupertinoIcons.list_bullet),
              ),
            ),
            child: myIndex == 0 ? const BreedsPage() : const AboutPage(),
          )
        : Scaffold(
            appBar: AppBar(title: const Text('Home')),
            drawer: MyDrawer(
              onItemTap: (newIndex) {
                setState(() {
                  myIndex = newIndex;
                });
              },
            ),
            body: myIndex == 0 ? const BreedsPage() : const AboutPage(),
          );
  }


void _showCupertinoDrawer(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: const Text('Drawer'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: const Text('Breeds'),
              onPressed: () {
                setState(() {
                  myIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('About'),
              onPressed: () {
                setState(() {
                  myIndex = 1;
                });
                Navigator.pop(context);
              },
            )
          ],
          cancelButton: CupertinoActionSheetAction(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        );
      },
    );
  }

}