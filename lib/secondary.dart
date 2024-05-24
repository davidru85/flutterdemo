import 'package:flutter/material.dart';

void secondary() {
  runApp(const SecondaryView());
}

class SecondaryView extends StatelessWidget {
  const SecondaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("BACK")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Text("BACK"),
                onPressed: () => goBack(context),
              )
            ],
          ),
        ));
  }
}

void goBack(BuildContext context) {
  Navigator.pop(context);
}