import 'dart:convert';

mixin Serializable {
  Map<String, dynamic> toJson();
}

class Person with Serializable {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      json['name'],
      json['age'],
    );
  }

  String toJsonString() {
    return jsonEncode(toJson());
  }
}

void main() {
  var person = Person('John', 30);

  var jsonString = person.toJsonString();
  print(jsonString);

  var jsonMap = jsonDecode(jsonString);
  var newPerson = Person.fromJson(jsonMap);
  print(newPerson.name);
  print(newPerson.age);
}
