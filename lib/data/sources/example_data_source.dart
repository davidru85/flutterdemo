import '../models/example_model.dart';

abstract class ExampleDataSource {
  Future<List<ExampleModel>> fetchExamples();
}

class ExampleDataSourceImpl implements ExampleDataSource {
  @override
  Future<List<ExampleModel>> fetchExamples() async {
    // Mock data source implementation
    await Future.delayed(const Duration(seconds: 5)); // Simulate network delay
    List<ExampleModel> itemsList = [];
    for (int i = 0; i < 20; i++) {
      itemsList.add(
        ExampleModel(id: "${i+1}", name: 'Example ${i+1}'),
      );
    }
    return itemsList;
  }
}
