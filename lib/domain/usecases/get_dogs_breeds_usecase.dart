import 'package:myapp/domain/entities/dogs_breeds_entity.dart';
import 'package:myapp/domain/repositories/dogs_breeds_repository.dart';

class GetDogsBreedsUseCase {
  final DogsBreedsRepository repository;

  GetDogsBreedsUseCase(this.repository);

  Future<DogsBreedsEntity> call() async {
    return await repository.getBreeds();
  }
}
