import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myapp/data/repositories/dogs_breeds_repository_impl.dart';
import 'package:myapp/data/sources/dogs_breeds_api.dart';
import 'package:myapp/data/sources/dogs_breeds_data_source.dart';
import 'package:myapp/domain/usecases/get_dogs_breeds_usecase.dart';
import 'package:myapp/presentation/dogs_breeds_presenter.dart';
import 'package:provider/provider.dart';
import 'core/app_widget.dart';

void main() {
  DogsBreedsDataSource dogsBreedsRepository;
  bool remote = Random().nextBool();
  if (remote) {
    dogsBreedsRepository = DogsBreedsDataSourceRemoteImpl(
        DogsBreedsApi("https://dogapi.dog/api/v2"));
  } else {
    dogsBreedsRepository = DogsBreedsDataSourceLocalImpl();
  }

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DogsBreedsPresenter(
            getDogsBreedsUseCase: GetDogsBreedsUseCase(
              DogsBreedsRepositoryImpl(dogsBreedsRepository),
            ),
          ),
        ),
      ],
      child: const AppWidget(),
    ),
  );
}
