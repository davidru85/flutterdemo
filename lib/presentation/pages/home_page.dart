import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/breeds_page.dart';
import 'package:myapp/presentation/pages/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: MyDrawer(
        onItemTap: (route) {
          Navigator.of(context).pushNamed(route);
        },
      ),
      body: BreedsPage(),
    );
  }
}
