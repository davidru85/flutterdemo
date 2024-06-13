import 'package:flutter/material.dart';
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
      ],
      child: AppWidget(),
    ),
  );
}
