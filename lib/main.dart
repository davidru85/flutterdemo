import 'package:flutter/material.dart';
import 'package:myapp/data/repositories/dogs_breeds_repository_impl.dart';
import 'package:myapp/data/sources/dogs_breeds_api.dart';
import 'package:myapp/data/sources/dogs_breeds_data_source.dart';
import 'package:myapp/domain/usecases/get_dogs_breeds_usecase.dart';
import 'package:myapp/presentation/dogs_breeds_presenter.dart';
import 'package:provider/provider.dart';
import 'core/app_widget.dart';
import 'data/repositories/example_repository_impl.dart';
import 'data/sources/example_data_source.dart';
import 'domain/usecases/get_examples_usecase.dart';
import 'presentation/bloc_example_bloc.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => BlocExampleBloc(
            getExamplesUseCase: GetExamplesUseCase(
              ExampleRepositoryImpl(ExampleDataSourceImpl()),
            ),
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => DogsBreedsPresenter(
            getDogsBreedsUseCase: GetDogsBreedsUseCase(
              DogsBreedsRepositoryImpl(DogsBreedsDataSourceRemoteImpl(
                  DogsBreedsApi("https://dogapi.dog/api/v2"))),
            ),
          ),
        ),
      ],
      child: const AppWidget(),
    ),
  );
}
