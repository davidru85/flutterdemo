import 'package:flutter/material.dart';
import 'package:myapp/domain/entities/dogs_breeds_entity.dart';
import 'package:myapp/domain/usecases/get_dogs_breeds_usecase.dart';

class DogsBreedsPresenter with ChangeNotifier {
  final GetDogsBreedsUseCase getDogsBreedsUseCase;

  DogsBreedsPresenter({required this.getDogsBreedsUseCase});

  DogsBreedsEntity _breedsEntity = DogsBreedsEntity();
  DogsBreedsEntity get breedsEntity => _breedsEntity;

  Future<void> fetchDogsBreed() async {
    _breedsEntity = await getDogsBreedsUseCase();
    notifyListeners();
  }
}
