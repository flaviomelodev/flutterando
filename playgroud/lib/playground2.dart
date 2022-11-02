void main() {
  // var person = Person(weight: 86.0, height: 1.77);

  //print(person.name);
  //print(person.lastName);
  //print(person.getFullName());
  //print(person.imc());

  final pessoas = <Map<String, dynamic>>[larissa];
  pessoas.add(flavio);

  print('----------');
  print(pessoas[1]['name1']);
}

class Person {
  String name;
  String lastName;
  double weight;
  double height;

  Person({
    this.name = 'Flávio',
    this.lastName = 'Melo',
    required this.weight,
    required this.height,
  });

  String getFullName() {
    return '$name $lastName';
  }

  double imc() {
    final result = weight / (height * height);
    return result;
  }
}

//MAP
final flavio = <String, dynamic>{
  'name1': 'Flávio',
  'age': 38,
};

final larissa = <String, dynamic>{
  'name2': 'Larissa',
  'age2': 37,
};
