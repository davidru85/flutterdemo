import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/dogs_breeds_entity.dart';
import 'package:myapp/domain/usecases/get_dogs_breeds_usecase.dart';

class DogsBreedsPresenter with ChangeNotifier {
  final GetDogsBreedsUseCase getDogsBreedsUseCase;

  DogsBreedsPresenter({required this.getDogsBreedsUseCase});

  List<DogsBreedsEntity> _breedsList = [];
  List<DogsBreedsEntity> get breedsList => _breedsList;

  Future<void> fetchDogsBreed() async {
    _breedsList = await getDogsBreedsUseCase();
    notifyListeners();
  }
}
