class DogsBreedsEntity {
  List<BreedsData>? data;
  Links? links;

  DogsBreedsEntity({
    this.data,
    this.links,
  });
}

class BreedsData {
  String? id;
  String? type;
  Attributes? attributes;
  Relationships? relationships;

  BreedsData({
    this.id,
    this.type,
    this.attributes,
    this.relationships,
  });
}

class Attributes {
  String? name;
  String? description;
  Life? life;
  Weight? maleWeight;
  Weight? femaleWeight;
  bool? hypoallergenic;

  Attributes({
    this.name,
    this.description,
    this.life,
    this.maleWeight,
    this.femaleWeight,
    this.hypoallergenic,
  });
}

class Weight {
  int? max;
  int? min;

  Weight({
    this.max,
    this.min,
  });
}

class Life {
  int? max;
  int? min;

  Life({
    this.max,
    this.min,
  });
}

class Relationships {
  Group? group;

  Relationships({
    this.group,
  });
}

class Group {
  RelationshipData? data;

  Group({
    this.data,
  });
}

class RelationshipData {
  String? id;
  String? type;

  RelationshipData({
    this.id,
    this.type,
  });
}

class Links {
  String? self;
  String? current;
  String? next;
  String? last;

  Links({
    this.self,
    this.current,
    this.next,
    this.last,
  });
}
