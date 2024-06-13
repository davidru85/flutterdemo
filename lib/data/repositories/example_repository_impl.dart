import '../../domain/entities/example_entity.dart';
import '../../domain/repositories/example_repository.dart';
import '../sources/example_data_source.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleDataSource dataSource;

  ExampleRepositoryImpl(this.dataSource);

  @override
  Future<List<ExampleEntity>> getExamples() async {
    final models = await dataSource.fetchExamples();
    return models.map((model) => ExampleEntity(id: model.id, name: model.name)).toList();
  }
}
