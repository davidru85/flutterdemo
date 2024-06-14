import 'package:myapp/data/sources/dogs_data_source.dart';
import 'package:myapp/domain/repositories/dogs_breed_repository.dart';
import '../../domain/entities/example_entity.dart';

class DogsBreedRepositoryImpl implements DogsBreedRepository {
  final DogsBreedDataSource dataSource;

  DogsBreedRepositoryImpl(this.dataSource);

  @override
  Future<List<ExampleEntity>> getExamples() async {
    final models = await dataSource.fetchBreeds();
    return models
        .map((model) => ExampleEntity(
            id: model.links?.current ?? "", name: model.links?.last ?? ""))
        .toList();
  }
}
