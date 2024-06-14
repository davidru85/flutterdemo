import 'package:flutter/material.dart';
import 'package:myapp/presentation/dogs_breeds_presenter.dart';
import 'package:provider/provider.dart';
import '../bloc_example_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<void> _fetchExamplesFuture;
  late Future<void> _fetchDogsBreedsFuture;

  @override
  void initState() {
    super.initState();
    _fetchExamplesFuture =
        Provider.of<BlocExampleBloc>(context, listen: false).fetchExamples();
    _fetchDogsBreedsFuture =
        Provider.of<DogsBreedsPresenter>(context, listen: false)
            .fetchDogsBreed();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<BlocExampleBloc>(context);
    final presenter = Provider.of<DogsBreedsPresenter>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: FutureBuilder(
        future: _fetchDogsBreedsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: presenter.breedsList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      "${presenter.breedsList[index].links?.current ?? "current"} + ${presenter.breedsList[index].links?.self ?? "self"}"),
                );
              },
            );
          }
        },
      ),
    );
  }
}
