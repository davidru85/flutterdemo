import 'dart:convert';

import 'package:myapp/data/sources/dogs_breeds_api.dart';

import '../models/dogs_breeds_model.dart';

abstract class DogsBreedsDataSource {
  Future<DogsBreedsModel> fetchBreeds();
}

class DogsBreedsDataSourceLocalImpl implements DogsBreedsDataSource {
  @override
  Future<DogsBreedsModel> fetchBreeds() async {
    // Mock data source implementation
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
    DogsBreedsModel breeds = DogsBreedsModel();
    List<BreedsDataModel>? itemsList = [
      BreedsDataModel(
          id: "1",
          type: "ONE",
          attributes: AttributesModel(
              name: "First dog",
              description: "This is the first dog breed",
              life: LifeModel(max: 10, min: 1),
              femaleWeight: WeightModel(max: 10, min: 1),
              maleWeight: WeightModel(max: 10, min: 1)),
          relationships: RelationshipsModel(
              group: GroupModel(
                  data: RelationshipDataModel(id: "rel1", type: "type1")))),
      BreedsDataModel(
          id: "2",
          type: "TWO",
          attributes: AttributesModel(
              name: "Dog two",
              description: "This is the second dog breed",
              life: LifeModel(max: 20, min: 2),
              femaleWeight: WeightModel(max: 20, min: 2),
              maleWeight: WeightModel(max: 20, min: 2)),
          relationships: RelationshipsModel(
              group: GroupModel(
                  data: RelationshipDataModel(id: "rel2", type: "type2"))))
    ];

    breeds.links = LinksModel(
        self: "self", current: "current", next: "next", last: "last");
    breeds.data = itemsList;

    return breeds;
  }
}

class DogsBreedsDataSourceRemoteImpl implements DogsBreedsDataSource {
  DogsBreedsApi apiService;

  DogsBreedsDataSourceRemoteImpl(this.apiService);

  @override
  Future<DogsBreedsModel> fetchBreeds() async {
    try {
      final response = await apiService.getRequest("breeds");
      return DogsBreedsModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      rethrow;
    }
  }
}
