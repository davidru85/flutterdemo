import '../models/dog_breed_model.dart';

abstract class DogsBreedDataSource {
  Future<List<DogBreedModel>> fetchBreeds();
}

class DogsBreedDataSourceImpl implements DogsBreedDataSource {
  @override
  Future<List<DogBreedModel>> fetchBreeds() async {
    // Mock data source implementation
    await Future.delayed(const Duration(seconds: 5)); // Simulate network delay
    List<DogBreedModel> itemsList = [];
    for (int i = 0; i < 20; i++) {
      itemsList.add(
        DogBreedModel(
            data: [
              BreedData(
                  id: "1",
                  type: "UNO",
                  attributes: Attributes(
                      name: "Perro Uno",
                      description: "Es el perro numero 1",
                      life: Life(max: 10, min: 1),
                      femaleWeight: Weight(max: 10, min: 1),
                      maleWeight: Weight(max: 10, min: 1)),
                  relationships: Relationships(
                      group: Group(
                          data: RelationshipData(id: "rel1", type: "type1")))),
              BreedData(
                  id: "2",
                  type: "DOS",
                  attributes: Attributes(
                      name: "Perro Dos",
                      description: "Es el perro numero 2",
                      life: Life(max: 20, min: 2),
                      femaleWeight: Weight(max: 20, min: 2),
                      maleWeight: Weight(max: 20, min: 2)),
                  relationships: Relationships(
                      group: Group(
                          data: RelationshipData(id: "rel2", type: "type2"))))
            ],
            links: Links(
                self: "self", current: "current", next: "next", last: "last")),
      );
    }
    return itemsList;
  }
}
