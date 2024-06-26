import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/platform_utils.dart';
import '../presentation/pages/about_page.dart';
import '../presentation/pages/breeds_page.dart';
import '../presentation/pages/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String appTitle = 'Flutter Clean Architecture';
    Map<String, WidgetBuilder> appRoutes = {
      '/breeds': (context) => const BreedsPage(),
      '/about': (context) => const AboutPage(),
    };

    return (PlatformUtils.isApple)
        ? CupertinoApp(
            title: appTitle,
            home: HomePage(),
            theme: const CupertinoThemeData(
              primaryColor: CupertinoColors.activeBlue,
            ),
            routes: appRoutes,
          )
        : MaterialApp(
            title: appTitle,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomePage(),
            routes: appRoutes,
          );
  }
}
