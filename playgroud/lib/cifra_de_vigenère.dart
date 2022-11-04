import 'dart:math';

final List<String> alpha =
    ' !"#\$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~'
        .split('');

main() {
  final vigenere = CifraVigenere(text: r"Numero do CPF 111.111.111-78");
  vigenere.encrypt();
  vigenere.decrypt();
}

class CifraVigenere {
  String? key;
  String text;
  String? crypt;
  CifraVigenere({
    this.key,
    required this.text,
    this.crypt,
  });

  String get getText {
    return text;
  }

  get keyGen {
    return key ??= List.generate(
            text.length, (i) => alpha.join()[Random().nextInt(alpha.length)])
        .join();
  }

  get getCrypt {
    return crypt ??= encrypt();
  }

  encrypt() {
    final _key = keyGen.split('');
    final msg = text.split('');
    var _crypt = [];

    for (int i = 0; i < text.length; i++) {
      _crypt.add((alpha.indexWhere((e) => e == msg[i]) +
              alpha.indexWhere((e) => e == _key[i])) %
          alpha.length);
    }
    crypt =
        List.generate(_crypt.length, (index) => alpha.elementAt(_crypt[index]))
            .join();
    print("=> CRIPTOGRAFIA");
    print("A Chave é: ${_key.join()}");
    print("A Mensagem é: ${msg.join()}");
    print("----------------------");
    print("cripyt: $crypt");
    print("======================\r\n");

    return crypt;
  }

  decrypt() {
    final _key = keyGen.split('');
    final _crypt = getCrypt.split('');
    final msg = [];

    for (int i = 0; i < _crypt.length; i++) {
      msg.add(((alpha.indexWhere((e) => e == _crypt[i]) -
                  alpha.indexWhere((e) => e == _key[i])) +
              alpha.length) %
          alpha.length);
    }
    var rs = List.generate(msg.length, (index) => alpha.elementAt(msg[index]))
        .join();

    print("=> DESCRIPTOGRAFIA");
    print("A Criptografia é: $crypt");
    print("A Chave é: $key");
    print("----------------------");
    print("A Mensagem é: $rs");
    print("======================");
  }
}
