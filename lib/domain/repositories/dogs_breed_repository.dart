import '../entities/example_entity.dart';

abstract class DogsBreedRepository {
  Future<List<ExampleEntity>> getExamples();
}
