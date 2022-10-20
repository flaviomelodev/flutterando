void main() {
  var teste = 10;
  print(isCPF(teste));
}

//Validação do CPF

isCPF(int cpf) {
  if (cpf == 00000000000 ||
      cpf == 11111111111 ||
      cpf == 22222222222 ||
      cpf == 33333333333 ||
      cpf == 44444444444 ||
      cpf == 55555555555 ||
      cpf == 66666666666 ||
      cpf == 77777777777 ||
      cpf == 88888888888 ||
      cpf == 99999999999) {
    print('CPF inválido!');
    //Implementar < que 11 dígitos
  } else if (cpf < 11) {
    print('CPF inválido');
  }
  return '';
}
