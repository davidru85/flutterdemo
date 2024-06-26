import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/platform_utils.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    String pageTitle = "About Page";
    String pageMiddleText = "About";

    return (PlatformUtils.isApple)
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text(pageTitle),
            ),
            child: Center(
              child: Text(pageMiddleText),
            ),
          )
        : Scaffold(
            appBar: AppBar(title: Text(pageTitle)),
            body: Text(pageMiddleText),
          );
  }
}
