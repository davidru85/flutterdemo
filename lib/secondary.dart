import 'package:flutter/material.dart';

void secondary() {
  runApp(const SecondaryView());
}

class SecondaryView extends StatelessWidget {
  const SecondaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second View',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MySecondView(title: 'Second View'),
    );
  }
}

class MySecondView extends StatefulWidget {
  const MySecondView({super.key, required this.title});

  final String title;

  @override
  State<MySecondView> createState() => _MySecondView();
}

class _MySecondView extends State<MySecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title)));
  }
}