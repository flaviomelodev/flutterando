void main() {
  //Cartão inválido: 5419 8250 0346 1210.
  //Cartão válido: 4916 6418 5936 9080.

  validateCard('4916 6418 5936 9080');
}

// Validar quantidade de dígitos
void validateCard(String numCard) {
  String digitsCard = numCard.replaceAll(' ', '');
  if (digitsCard.length < 16) {
    print('Não é um número de cartão');
    return;
  }

  // Pegar último dígito
  int lastDigit = int.parse(digitsCard[15]);

  //Soma do cartão
  int sumNumbersCard = lastDigit;

  for (int i = 0; i < digitsCard.length - 1; i++) {
    int digit = int.parse(digitsCard[i]);

    //Coluna ímpar
    if (i.isOdd) {
      sumNumbersCard += digit;
    } else if (digit * 2 >= 10) {
      //Coluna par com 2 dígitos
      String digitEven = (digit * 2).toString();
      int digit1 = int.parse(digitEven[0]);
      int digit2 = int.parse(digitEven[1]);
      sumNumbersCard += (digit1 + digit2);
    } else {
      //Coluna par com 1 dígito
      sumNumbersCard += (digit * 2);
    }
  }
  int result = (sumNumbersCard % 10);

  if (lastDigit == result) {
    print('Numero de cartão válido!');
  } else {
    print('Número de cartão inválido!');
  }
}
