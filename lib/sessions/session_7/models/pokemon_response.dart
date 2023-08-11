import 'dart:convert';
import 'package:flutter/foundation.dart';

class Pokemon {
  final int id;
  final String num;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;
  final String candy;
  final int cndyCount;
  final String egg;
  final double spawnChance;

  Pokemon({
    required this.id,
    required this.num,
    required this.name,
    required this.img,
    required this.type,
    required this.height,
    required this.weight,
    required this.candy,
    required this.cndyCount,
    required this.egg,
    required this.spawnChance,
  });

  Pokemon copyWith({
    int? id,
    String? num,
    String? name,
    String? img,
    List<String>? type,
    String? height,
    String? weight,
    String? candy,
    int? cndyCount,
    String? egg,
    double? spawnChance,
  }) {
    return Pokemon(
      id: id ?? this.id,
      num: num ?? this.num,
      name: name ?? this.name,
      img: img ?? this.img,
      type: type ?? this.type,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      candy: candy ?? this.candy,
      cndyCount: cndyCount ?? this.cndyCount,
      egg: egg ?? this.egg,
      spawnChance: spawnChance ?? this.spawnChance,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'num': num,
      'name': name,
      'img': img,
      'type': type,
      'height': height,
      'weight': weight,
      'candy': candy,
      'cndyCount': cndyCount,
      'egg': egg,
      'spawnChance': spawnChance,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'] as int,
      num: map['num'] as String,
      name: map['name'] as String,
      img: map['img'] as String,
      type: List<String>.from((map['type'])),
      height: map['height'] as String,
      weight: map['weight'] as String,
      candy: map['candy'] as String,
      cndyCount: map['cndyCount'] ?? 0,
      egg: map['egg'] as String,
      spawnChance: map['spawnChance'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) => Pokemon.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pokemon(id: $id, num: $num, name: $name, img: $img, type: $type, height: $height, weight: $weight, candy: $candy, cndyCount: $cndyCount, egg: $egg, spawnChance: $spawnChance)';
  }

  @override
  bool operator ==(covariant Pokemon other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.num == num &&
      other.name == name &&
      other.img == img &&
      listEquals(other.type, type) &&
      other.height == height &&
      other.weight == weight &&
      other.candy == candy &&
      other.cndyCount == cndyCount &&
      other.egg == egg &&
      other.spawnChance == spawnChance;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      num.hashCode ^
      name.hashCode ^
      img.hashCode ^
      type.hashCode ^
      height.hashCode ^
      weight.hashCode ^
      candy.hashCode ^
      cndyCount.hashCode ^
      egg.hashCode ^
      spawnChance.hashCode;
  }
}
