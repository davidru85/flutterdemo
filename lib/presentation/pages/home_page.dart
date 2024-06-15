import 'package:flutter/material.dart';
import 'package:myapp/presentation/dogs_breeds_presenter.dart';
import 'package:provider/provider.dart';

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
    _fetchDogsBreedsFuture =
        Provider.of<DogsBreedsPresenter>(context, listen: false)
            .fetchDogsBreed();
  }

  @override
  Widget build(BuildContext context) {
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
              itemCount: presenter.breedsEntity.data?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      presenter.breedsEntity.data?[index].attributes?.name ??
                          "name"),
                  onTap: () => showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 15.0),
                        height: 200,
                        child: Center(
                          child: Text(presenter.breedsEntity.data?[index]
                                  .attributes?.description ??
                              "Description"),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
