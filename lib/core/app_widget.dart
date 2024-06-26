
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/platform_utils.dart';
import '../presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return (PlatformUtils.isApple)
        ? CupertinoApp(
            title: 'Flutter Clean Architecture',
            home: HomePage(),
            theme: const CupertinoThemeData(
              primaryColor: CupertinoColors.activeBlue,
            ),
          )
        : MaterialApp(
            title: 'Flutter Clean Architecture',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
          );
  }

  /* @override
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
  } */
}
