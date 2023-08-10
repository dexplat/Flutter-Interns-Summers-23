import 'dart:convert';

class Author {
  final String name;
  final String github;
  
  Author({
    required this.name,
    required this.github,
  });

  Author copyWith({
    String? name,
    String? github,
  }) {
    return Author(
      name: name ?? this.name,
      github: github ?? this.github,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'github': github,
    };
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      name: map['name'] as String,
      github: map['github'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) => Author.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Author(name: $name, github: $github)';

  @override
  bool operator ==(covariant Author other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.github == github;
  }

  @override
  int get hashCode => name.hashCode ^ github.hashCode;
}
