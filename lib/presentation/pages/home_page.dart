import 'package:flutter/material.dart';
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
    return Scaffold(
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
}
