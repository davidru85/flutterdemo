import 'package:flutter/material.dart';

void secondary() {
  runApp(const SecondaryView());
}

class SecondaryView extends StatelessWidget {
  const SecondaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Secondary View');
  }
}