import 'package:flutter/material.dart';
import 'package:myapp/presentation/pages/about_page.dart';
import 'package:myapp/presentation/pages/breeds_page.dart';
import '../presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/breeds': (context) => const BreedsPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
