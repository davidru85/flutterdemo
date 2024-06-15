import 'package:myapp/data/sources/dogs_breeds_data_source.dart';
import 'package:myapp/domain/entities/dogs_breeds_entity.dart';
import 'package:myapp/domain/repositories/dogs_breeds_repository.dart';

class DogsBreedsRepositoryImpl implements DogsBreedsRepository {
  final DogsBreedsDataSource dataSource;

  DogsBreedsRepositoryImpl(this.dataSource);

  @override
  Future<DogsBreedsEntity> getBreeds() async {
    final models = await dataSource.fetchBreeds();
    return DogsBreedsEntity.fromData(models);
  }
}
