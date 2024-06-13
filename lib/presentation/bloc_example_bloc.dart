import 'package:flutter/material.dart';
import '../../domain/entities/example_entity.dart';
import '../../domain/usecases/get_examples_usecase.dart';

class BlocExampleBloc with ChangeNotifier {
  final GetExamplesUseCase getExamplesUseCase;

  BlocExampleBloc({required this.getExamplesUseCase});

  List<ExampleEntity> _examples = [];
  List<ExampleEntity> get examples => _examples;

  Future<void> fetchExamples() async {
    _examples = await getExamplesUseCase();
    notifyListeners();
  }
}
