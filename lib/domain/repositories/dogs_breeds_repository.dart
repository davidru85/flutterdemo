
import 'package:myapp/domain/entities/dogs_breeds_entity.dart';

abstract class DogsBreedsRepository {
  Future<List<DogsBreedsEntity>> getBreeds();
}
