import '../models/example_model.dart';

abstract class ExampleDataSource {
  Future<List<ExampleModel>> fetchExamples();
}

class ExampleDataSourceImpl implements ExampleDataSource {
  @override
  Future<List<ExampleModel>> fetchExamples() async {
    // Mock data source implementation
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return [
      ExampleModel(id: '1', name: 'Example 1'),
      ExampleModel(id: '2', name: 'Example 2'),
      ExampleModel(id: '3', name: 'Example 3'),
    ];
  }
}
