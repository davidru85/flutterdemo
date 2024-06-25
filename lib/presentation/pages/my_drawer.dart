import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final Function(int) onItemTap;

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
            leading: const Icon(Icons.list_alt),
            title: const Text('Breeds'),
            onTap: () {
              Navigator.of(context).pop();
              onItemTap(0);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              Navigator.of(context).pop();
              onItemTap(1);
            },
          ),
        ],
      ),
    );
  }
}