void main() {
  var names = <String>['Flavio', 'Larissa', 'Catarina'];

  names.sort((a, b) {
    return a.compareTo(b);
  });

  print(names);
}
