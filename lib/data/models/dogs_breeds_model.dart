import 'package:json_annotation/json_annotation.dart';

part 'dogs_breeds_model.g.dart';

@JsonSerializable()
class DogsBreedsModel {
    @JsonKey(name: "data")
    List<BreedsDataModel>? data;
    @JsonKey(name: "links")
    LinksModel? links;

    DogsBreedsModel({
        this.data,
        this.links,
    });

    factory DogsBreedsModel.fromJson(Map<String, dynamic> json) => _$DogsBreedsModelFromJson(json);

    Map<String, dynamic> toJson() => _$DogsBreedsModelToJson(this);
}

@JsonSerializable()
class BreedsDataModel {
    @JsonKey(name: "id")
    String? id;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "attributes")
    AttributesModel? attributes;
    @JsonKey(name: "relationships")
    RelationshipsModel? relationships;

    BreedsDataModel({
        this.id,
        this.type,
        this.attributes,
        this.relationships,
    });

    factory BreedsDataModel.fromJson(Map<String, dynamic> json) => _$BreedsDataModelFromJson(json);

    Map<String, dynamic> toJson() => _$BreedsDataModelToJson(this);
}

@JsonSerializable()
class AttributesModel {
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "life")
    LifeModel? life;
    @JsonKey(name: "male_weight")
    WeightModel? maleWeight;
    @JsonKey(name: "female_weight")
    WeightModel? femaleWeight;
    @JsonKey(name: "hypoallergenic")
    bool? hypoallergenic;

    AttributesModel({
        this.name,
        this.description,
        this.life,
        this.maleWeight,
        this.femaleWeight,
        this.hypoallergenic,
    });

    factory AttributesModel.fromJson(Map<String, dynamic> json) => _$AttributesModelFromJson(json);

    Map<String, dynamic> toJson() => _$AttributesModelToJson(this);
}

@JsonSerializable()
class WeightModel {
    @JsonKey(name: "max")
    int? max;
    @JsonKey(name: "min")
    int? min;

    WeightModel({
        this.max,
        this.min,
    });

    factory WeightModel.fromJson(Map<String, dynamic> json) => _$WeightModelFromJson(json);

    Map<String, dynamic> toJson() => _$WeightModelToJson(this);
}

@JsonSerializable()
class LifeModel {
    @JsonKey(name: "max")
    int? max;
    @JsonKey(name: "min")
    int? min;

    LifeModel({
        this.max,
        this.min,
    });

    factory LifeModel.fromJson(Map<String, dynamic> json) => _$LifeModelFromJson(json);

    Map<String, dynamic> toJson() => _$LifeModelToJson(this);
}

@JsonSerializable()
class RelationshipsModel {
    @JsonKey(name: "group")
    GroupModel? group;

    RelationshipsModel({
        this.group,
    });

    factory RelationshipsModel.fromJson(Map<String, dynamic> json) => _$RelationshipsModelFromJson(json);

    Map<String, dynamic> toJson() => _$RelationshipsModelToJson(this);
}

@JsonSerializable()
class GroupModel {
    @JsonKey(name: "data")
    RelationshipDataModel? data;

    GroupModel({
        this.data,
    });

    factory GroupModel.fromJson(Map<String, dynamic> json) => _$GroupModelFromJson(json);

    Map<String, dynamic> toJson() => _$GroupModelToJson(this);
}

@JsonSerializable()
class RelationshipDataModel {
    @JsonKey(name: "id")
    String? id;
    @JsonKey(name: "type")
    String? type;

    RelationshipDataModel({
        this.id,
        this.type,
    });

    factory RelationshipDataModel.fromJson(Map<String, dynamic> json) => _$RelationshipDataModelFromJson(json);

    Map<String, dynamic> toJson() => _$RelationshipDataModelToJson(this);
}

@JsonSerializable()
class LinksModel {
    @JsonKey(name: "self")
    String? self;
    @JsonKey(name: "current")
    String? current;
    @JsonKey(name: "next")
    String? next;
    @JsonKey(name: "last")
    String? last;

    LinksModel({
        this.self,
        this.current,
        this.next,
        this.last,
    });

    factory LinksModel.fromJson(Map<String, dynamic> json) => _$LinksModelFromJson(json);

    Map<String, dynamic> toJson() => _$LinksModelToJson(this);
}
