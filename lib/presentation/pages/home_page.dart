import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../bloc_example_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<BlocExampleBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: FutureBuilder(
          future: bloc.fetchExamples(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            return ListView.builder(
              itemCount: bloc.examples.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(bloc.examples[index].name),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
