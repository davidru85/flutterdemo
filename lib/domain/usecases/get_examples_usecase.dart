import '../entities/example_entity.dart';
import '../repositories/example_repository.dart';

class GetExamplesUseCase {
  final ExampleRepository repository;

  GetExamplesUseCase(this.repository);

  Future<List<ExampleEntity>> call() async {
    return await repository.getExamples();
  }
}
