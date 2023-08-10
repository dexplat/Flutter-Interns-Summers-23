import 'dart:convert';

import 'package:flutter_interns/sessions/session_7/models/author.dart';

class Course {
  final String name;
  final int price;
  final String id;
  final Author author;

  Course({
    required this.name,
    required this.price,
    required this.id,
    required this.author,
  });

  Course copyWith({
    String? name,
    int? price,
    String? id,
    Author? author,
  }) {
    return Course(
      name: name ?? this.name,
      price: price ?? this.price,
      id: id ?? this.id,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'id': id,
      'author': author.toMap(),
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      name: map['name'] as String,
      price: map['price'],
      id: map['id'] as String,
      author: Author.fromMap(map['author'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String source) =>
      Course.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Course(name: $name, price: $price, id: $id, author: $author)';
  }

  @override
  bool operator ==(covariant Course other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.price == price &&
        other.id == id &&
        other.author == author;
  }

  @override
  int get hashCode {
    return name.hashCode ^ price.hashCode ^ id.hashCode ^ author.hashCode;
  }
}
