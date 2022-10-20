//Sequência de Fibonacci

void main() {
  String result = '';
  for (int i = 0; i <= 6; i++) {
    result += '${fibonacci(i)}, ';
  }
  print('A sequência Fibonacci é: $result...');
  print('O valor Fibonacci é: ${fibonacci(6)}.');
}

fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
