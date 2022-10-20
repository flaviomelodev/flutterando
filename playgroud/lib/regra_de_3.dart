//Regra de 3

void main() {
  print('');
  print(
      'O resultado para a regra de três é: ${regraDe3(grupo11: 5, grupo12: 10, grupo21: 20)}');
}

int regraDe3({
  required int grupo11,
  required int grupo12,
  required int grupo21,
}) {
  //colocando ~/ é a mesma coisa de ((grupo21 * grupo12) ~/ grupo11).toInt()
  return (grupo21 * grupo12) ~/ grupo11;
}
