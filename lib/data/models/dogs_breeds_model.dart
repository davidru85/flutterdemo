import 'package:json_annotation/json_annotation.dart';

part 'dogs_breeds_model.g.dart';

@JsonSerializable()
class DogsBreedsModel {
    @JsonKey(name: "data")
    List<BreedsData>? data;
    @JsonKey(name: "links")
    Links? links;

    DogsBreedsModel({
        this.data,
        this.links,
    });

    factory DogsBreedsModel.fromJson(Map<String, dynamic> json) => _$DogsBreedsModelFromJson(json);

    Map<String, dynamic> toJson() => _$DogsBreedsModelToJson(this);
}

@JsonSerializable()
class BreedsData {
    @JsonKey(name: "id")
    String? id;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "attributes")
    Attributes? attributes;
    @JsonKey(name: "relationships")
    Relationships? relationships;

    BreedsData({
        this.id,
        this.type,
        this.attributes,
        this.relationships,
    });

    factory BreedsData.fromJson(Map<String, dynamic> json) => _$BreedsDataFromJson(json);

    Map<String, dynamic> toJson() => _$BreedsDataToJson(this);
}

@JsonSerializable()
class Attributes {
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "life")
    Life? life;
    @JsonKey(name: "male_weight")
    Weight? maleWeight;
    @JsonKey(name: "female_weight")
    Weight? femaleWeight;
    @JsonKey(name: "hypoallergenic")
    bool? hypoallergenic;

    Attributes({
        this.name,
        this.description,
        this.life,
        this.maleWeight,
        this.femaleWeight,
        this.hypoallergenic,
    });

    factory Attributes.fromJson(Map<String, dynamic> json) => _$AttributesFromJson(json);

    Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class Weight {
    @JsonKey(name: "max")
    int? max;
    @JsonKey(name: "min")
    int? min;

    Weight({
        this.max,
        this.min,
    });

    factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

    Map<String, dynamic> toJson() => _$WeightToJson(this);
}

@JsonSerializable()
class Life {
    @JsonKey(name: "max")
    int? max;
    @JsonKey(name: "min")
    int? min;

    Life({
        this.max,
        this.min,
    });

    factory Life.fromJson(Map<String, dynamic> json) => _$LifeFromJson(json);

    Map<String, dynamic> toJson() => _$LifeToJson(this);
}

@JsonSerializable()
class Relationships {
    @JsonKey(name: "group")
    Group? group;

    Relationships({
        this.group,
    });

    factory Relationships.fromJson(Map<String, dynamic> json) => _$RelationshipsFromJson(json);

    Map<String, dynamic> toJson() => _$RelationshipsToJson(this);
}

@JsonSerializable()
class Group {
    @JsonKey(name: "data")
    RelationshipData? data;

    Group({
        this.data,
    });

    factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

    Map<String, dynamic> toJson() => _$GroupToJson(this);
}

@JsonSerializable()
class RelationshipData {
    @JsonKey(name: "id")
    String? id;
    @JsonKey(name: "type")
    String? type;

    RelationshipData({
        this.id,
        this.type,
    });

    factory RelationshipData.fromJson(Map<String, dynamic> json) => _$RelationshipDataFromJson(json);

    Map<String, dynamic> toJson() => _$RelationshipDataToJson(this);
}

@JsonSerializable()
class Links {
    @JsonKey(name: "self")
    String? self;
    @JsonKey(name: "current")
    String? current;
    @JsonKey(name: "next")
    String? next;
    @JsonKey(name: "last")
    String? last;

    Links({
        this.self,
        this.current,
        this.next,
        this.last,
    });

    factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

    Map<String, dynamic> toJson() => _$LinksToJson(this);
}
