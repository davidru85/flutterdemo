import 'package:myapp/data/models/dogs_breeds_model.dart';

class DogsBreedsEntity {
  List<BreedsDataEntity>? data;
  LinksEntity? links;

  DogsBreedsEntity({
    this.data,
    this.links,
  });

  factory DogsBreedsEntity.fromData(DogsBreedsModel? other) {
    return DogsBreedsEntity(
      data: (other?.data?.map((data) => BreedsDataEntity.fromData(data)))
          ?.toList(),
      links: LinksEntity.fromData(other?.links),
    );
  }
}

class BreedsDataEntity {
  String? id;
  String? type;
  AttributesEntity? attributes;
  RelationshipsEntity? relationships;

  BreedsDataEntity({
    this.id,
    this.type,
    this.attributes,
    this.relationships,
  });

  factory BreedsDataEntity.fromData(BreedsDataModel? other) {
    return BreedsDataEntity(
      id: other?.id,
      type: other?.type,
      attributes: AttributesEntity.fromData(other?.attributes),
      relationships: RelationshipsEntity.fromData(other?.relationships),
    );
  }
}

class AttributesEntity {
  String? name;
  String? description;
  LifeEntity? life;
  WeightEntity? maleWeight;
  WeightEntity? femaleWeight;
  bool? hypoallergenic;

  AttributesEntity({
    this.name,
    this.description,
    this.life,
    this.maleWeight,
    this.femaleWeight,
    this.hypoallergenic,
  });

  factory AttributesEntity.fromData(AttributesModel? other) {
    return AttributesEntity(
      name: other?.name,
      description: other?.description,
      life: LifeEntity.fromData(other?.life),
      maleWeight: WeightEntity.fromData(other?.maleWeight),
      femaleWeight: WeightEntity.fromData(other?.femaleWeight),
      hypoallergenic: other?.hypoallergenic,
    );
  }
}

class WeightEntity {
  int? max;
  int? min;

  WeightEntity({
    this.max,
    this.min,
  });
  factory WeightEntity.fromData(WeightModel? other) {
    return WeightEntity(
      max: other?.max,
      min: other?.min,
    );
  }
}

class LifeEntity {
  int? max;
  int? min;

  LifeEntity({
    this.max,
    this.min,
  });

  factory LifeEntity.fromData(LifeModel? other) {
    return LifeEntity(
      max: other?.max,
      min: other?.min,
    );
  }
}

class RelationshipsEntity {
  GroupEntity? group;

  RelationshipsEntity({
    this.group,
  });

  factory RelationshipsEntity.fromData(RelationshipsModel? other) {
    return RelationshipsEntity(group: GroupEntity.fromData(other?.group));
  }
}

class GroupEntity {
  RelationshipDataEntity? data;

  GroupEntity({
    this.data,
  });
  factory GroupEntity.fromData(GroupModel? other) {
    return GroupEntity(
      data: RelationshipDataEntity.fromData(other?.data),
    );
  }
}

class RelationshipDataEntity {
  String? id;
  String? type;

  RelationshipDataEntity({this.id, this.type});

  factory RelationshipDataEntity.fromData(RelationshipDataModel? other) {
    return RelationshipDataEntity(id: other?.id, type: other?.type);
  }
}

class LinksEntity {
  String? self;
  String? current;
  String? next;
  String? last;

  LinksEntity({this.self, this.current, this.next, this.last});

  factory LinksEntity.fromData(LinksModel? other) {
    return LinksEntity(
        self: other?.self,
        current: other?.current,
        next: other?.next,
        last: other?.last);
  }
}
