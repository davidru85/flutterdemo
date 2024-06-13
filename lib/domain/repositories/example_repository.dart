import '../entities/example_entity.dart';

abstract class ExampleRepository {
  Future<List<ExampleEntity>> getExamples();
}
