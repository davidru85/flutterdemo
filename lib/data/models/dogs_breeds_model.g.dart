// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dogs_breeds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogsBreedsModel _$DogsBreedsModelFromJson(Map<String, dynamic> json) =>
    DogsBreedsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BreedsData.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DogsBreedsModelToJson(DogsBreedsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
    };

BreedsData _$BreedsDataFromJson(Map<String, dynamic> json) => BreedsData(
      id: json['id'] as String?,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : Relationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BreedsDataToJson(BreedsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      name: json['name'] as String?,
      description: json['description'] as String?,
      life: json['life'] == null
          ? null
          : Life.fromJson(json['life'] as Map<String, dynamic>),
      maleWeight: json['male_weight'] == null
          ? null
          : Weight.fromJson(json['male_weight'] as Map<String, dynamic>),
      femaleWeight: json['female_weight'] == null
          ? null
          : Weight.fromJson(json['female_weight'] as Map<String, dynamic>),
      hypoallergenic: json['hypoallergenic'] as bool?,
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'life': instance.life,
      'male_weight': instance.maleWeight,
      'female_weight': instance.femaleWeight,
      'hypoallergenic': instance.hypoallergenic,
    };

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      max: (json['max'] as num?)?.toInt(),
      min: (json['min'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

Life _$LifeFromJson(Map<String, dynamic> json) => Life(
      max: (json['max'] as num?)?.toInt(),
      min: (json['min'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LifeToJson(Life instance) => <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

Relationships _$RelationshipsFromJson(Map<String, dynamic> json) =>
    Relationships(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RelationshipsToJson(Relationships instance) =>
    <String, dynamic>{
      'group': instance.group,
    };

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
      data: json['data'] == null
          ? null
          : RelationshipData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'data': instance.data,
    };

RelationshipData _$RelationshipDataFromJson(Map<String, dynamic> json) =>
    RelationshipData(
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$RelationshipDataToJson(RelationshipData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      self: json['self'] as String?,
      current: json['current'] as String?,
      next: json['next'] as String?,
      last: json['last'] as String?,
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
    };
