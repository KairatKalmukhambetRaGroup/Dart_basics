import 'Binary.dart';

int greatestCommonFactor(int a, int b) {
  if (b == 0) return a;
  return greatestCommonFactor(b, a % b);
}

int leastCommonMultiple(int a, int b) {
  if (a == 0 || b == 0) return 0;
  int gcf = greatestCommonFactor(a, b);
  return ((a * b).abs() / gcf).round();
}

Binary intToBinary(int a) {
  String val = '';
  while (a > 0) {
    val = (a % 2).toString() + val;
    a = (a / 2).floor();
  }
  return Binary(val);
}

int binaryToInt(Binary a) {
  String s = a.toString();
  int val = 0;
  for (var i = s.length - 1, k = 1; i >= 0; i--, k *= 2) {
    val += int.parse(s[i]) * k;
  }
  return val;
}
