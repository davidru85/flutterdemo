import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Function(String) onItemTap;

  const MyDrawer({required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.pageview),
            title: const Text('Home'),
            onTap: () {
              onItemTap('/home');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(Icons.pages),
            title: const Text('About'),
            onTap: () {
              onItemTap('/about');
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}