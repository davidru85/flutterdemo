import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../bloc_example_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<void> _fetchExamplesFuture;

  @override
  void initState() {
    super.initState();
    _fetchExamplesFuture = Provider.of<BlocExampleBloc>(context, listen: false).fetchExamples();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<BlocExampleBloc>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: FutureBuilder(
        future: _fetchExamplesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: bloc.examples.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${bloc.examples[index].id} + ${bloc.examples[index].name}"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
