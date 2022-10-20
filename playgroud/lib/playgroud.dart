void main() {
  //String
  //var name = 'Flávio Melo';
  //print(name);

  var completeName = fullName(
    name: 'Flávio',
    lastName: 'Melo',
  );
  print(completeName);
}

String fullName({
  required String name,
  String lastName = '',
}) {
  var completeName = '$name $lastName';
  return completeName;
}
