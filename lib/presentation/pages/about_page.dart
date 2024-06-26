import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/core/platform_utils.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (PlatformUtils.isApple)
        ? const CupertinoPageScaffold(
            
            child: Text('About'),
          )
        : Scaffold(
            appBar: AppBar(title: const Text('About Page')),
            body: const Text('About'),
          );
  }
}
