// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dogs_breeds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DogsBreedsModel _$DogsBreedsModelFromJson(Map<String, dynamic> json) =>
    DogsBreedsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BreedsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : LinksModel.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DogsBreedsModelToJson(DogsBreedsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
    };

BreedsDataModel _$BreedsDataModelFromJson(Map<String, dynamic> json) =>
    BreedsDataModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
      attributes: json['attributes'] == null
          ? null
          : AttributesModel.fromJson(
              json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : RelationshipsModel.fromJson(
              json['relationships'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BreedsDataModelToJson(BreedsDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
    };

AttributesModel _$AttributesModelFromJson(Map<String, dynamic> json) =>
    AttributesModel(
      name: json['name'] as String?,
      description: json['description'] as String?,
      life: json['life'] == null
          ? null
          : LifeModel.fromJson(json['life'] as Map<String, dynamic>),
      maleWeight: json['male_weight'] == null
          ? null
          : WeightModel.fromJson(json['male_weight'] as Map<String, dynamic>),
      femaleWeight: json['female_weight'] == null
          ? null
          : WeightModel.fromJson(json['female_weight'] as Map<String, dynamic>),
      hypoallergenic: json['hypoallergenic'] as bool?,
    );

Map<String, dynamic> _$AttributesModelToJson(AttributesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'life': instance.life,
      'male_weight': instance.maleWeight,
      'female_weight': instance.femaleWeight,
      'hypoallergenic': instance.hypoallergenic,
    };

WeightModel _$WeightModelFromJson(Map<String, dynamic> json) => WeightModel(
      max: (json['max'] as num?)?.toInt(),
      min: (json['min'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WeightModelToJson(WeightModel instance) =>
    <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

LifeModel _$LifeModelFromJson(Map<String, dynamic> json) => LifeModel(
      max: (json['max'] as num?)?.toInt(),
      min: (json['min'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LifeModelToJson(LifeModel instance) => <String, dynamic>{
      'max': instance.max,
      'min': instance.min,
    };

RelationshipsModel _$RelationshipsModelFromJson(Map<String, dynamic> json) =>
    RelationshipsModel(
      group: json['group'] == null
          ? null
          : GroupModel.fromJson(json['group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RelationshipsModelToJson(RelationshipsModel instance) =>
    <String, dynamic>{
      'group': instance.group,
    };

GroupModel _$GroupModelFromJson(Map<String, dynamic> json) => GroupModel(
      data: json['data'] == null
          ? null
          : RelationshipDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupModelToJson(GroupModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

RelationshipDataModel _$RelationshipDataModelFromJson(
        Map<String, dynamic> json) =>
    RelationshipDataModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$RelationshipDataModelToJson(
        RelationshipDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

LinksModel _$LinksModelFromJson(Map<String, dynamic> json) => LinksModel(
      self: json['self'] as String?,
      current: json['current'] as String?,
      next: json['next'] as String?,
      last: json['last'] as String?,
    );

Map<String, dynamic> _$LinksModelToJson(LinksModel instance) =>
    <String, dynamic>{
      'self': instance.self,
      'current': instance.current,
      'next': instance.next,
      'last': instance.last,
    };
