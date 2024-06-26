import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/presentation/dogs_breeds_presenter.dart';
import 'package:provider/provider.dart';

import '../../core/platform_utils.dart';

class BreedsPage extends StatefulWidget {
  const BreedsPage({super.key});

  @override
  _BreedsPageState createState() => _BreedsPageState();
}

class _BreedsPageState extends State<BreedsPage> {
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
    String pageTitle = "Breeds Page";

    return (PlatformUtils.isApple)
        ? CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text(pageTitle),
            ),
            child: fetchBuilder(presenter, _fetchDogsBreedsFuture),
          )
        : Scaffold(
            appBar: AppBar(title: Text(pageTitle)),
            body: fetchBuilder(presenter, _fetchDogsBreedsFuture),
          );
  }
}

FutureBuilder fetchBuilder(
    DogsBreedsPresenter presenter, Future<void> fetchDogsBreedsFuture) {
  return FutureBuilder(
    future: fetchDogsBreedsFuture,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(child: CupertinoActivityIndicator());
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
                      child: Text(presenter.breedsEntity.data?[index].attributes
                              ?.description ??
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
  );
}
