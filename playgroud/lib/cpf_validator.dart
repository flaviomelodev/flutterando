void main() {
  print('----------------------');
  print('CPF a ser verificado:');
  validatedCpf('111111111112');
  print('----------------------');
}

//Função para validar CPF
void validatedCpf(String cpf) {
  var numbers = cpf.replaceAll(RegExp(r'[^0-9]'), '');
  print(numbers);

  //Verificar se tem 11 dígitos
  if (numbers.length != 11) {
    return print('Quantidade de dígitos errada.');
  }

  //Separar os primeiros 9 dígitos
  List<int> numbersCpf =
      numbers.split('').map((number) => int.parse(number)).toList();
  int i = numbersCpf[0];
  int i1 = numbersCpf[1];
  int i2 = numbersCpf[2];
  int i3 = numbersCpf[3];
  int i4 = numbersCpf[4];
  int i5 = numbersCpf[5];
  int i6 = numbersCpf[6];
  int i7 = numbersCpf[7];
  int i8 = numbersCpf[8];
  //Primeiro dígito
  int i9 = numbersCpf[9];
  int i10 = numbersCpf[10];
  print('O primeiro dígito verificador é : $i9');
  print('O segundo dígito verificador é: $i10');

  //Calcular primeiro dígito verificador
  int firstDigit = i * 10 +
      i1 * 9 +
      i2 * 8 +
      i3 * 7 +
      i4 * 6 +
      i5 * 5 +
      i6 * 4 +
      i7 * 3 +
      i8 * 2;

  var result1 = (firstDigit * 10) % 11;

  //Calcular segundo dígito verificador
  int secondDigit = i * 11 +
      i1 * 10 +
      i2 * 9 +
      i3 * 8 +
      i4 * 7 +
      i5 * 6 +
      i6 * 5 +
      i7 * 4 +
      i8 * 3 +
      i9 * 2;

  var result2 = (secondDigit * 10) % 11;

  //Verificar se os resultados são iguais
  if (result1 != numbersCpf[9] && result2 != numbersCpf[10]) {
    print('----------------------');
    print('CPF INVÁLIDO!!');
  } else if (result1 == 0 && result2 == 0) {
    print('----------------------');
    print('CPF INVÁLIDO!');
  } else {
    print('----------------------');
    print('CPF válido!');
  }
}
