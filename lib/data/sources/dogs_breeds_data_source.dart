import '../models/dogs_breeds_model.dart';

abstract class DogsBreedsDataSource {
  Future<DogsBreedsModel> fetchBreeds();
}

class DogsBreedsDataSourceImpl implements DogsBreedsDataSource {
  @override
  Future<DogsBreedsModel> fetchBreeds() async {
    // Mock data source implementation
    await Future.delayed(const Duration(seconds: 5)); // Simulate network delay
    DogsBreedsModel breeds = DogsBreedsModel();
    List<BreedsData>? itemsList = [
      BreedsData(
          id: "1",
          type: "UNO",
          attributes: Attributes(
              name: "Perro Uno",
              description: "Es el perro numero 1",
              life: Life(max: 10, min: 1),
              femaleWeight: Weight(max: 10, min: 1),
              maleWeight: Weight(max: 10, min: 1)),
          relationships: Relationships(
              group: Group(data: RelationshipData(id: "rel1", type: "type1")))),
      BreedsData(
          id: "2",
          type: "DOS",
          attributes: Attributes(
              name: "Perro Dos",
              description: "Es el perro numero 2",
              life: Life(max: 20, min: 2),
              femaleWeight: Weight(max: 20, min: 2),
              maleWeight: Weight(max: 20, min: 2)),
          relationships: Relationships(
              group: Group(data: RelationshipData(id: "rel2", type: "type2"))))
    ];

    breeds.links =
        Links(self: "self", current: "current", next: "next", last: "last");
    breeds.data = itemsList;

    return breeds;
  }
}
