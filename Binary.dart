typedef IntList = List<int>;

class Binary {
  String _value;
  Binary(this._value);

  @override
  String toString() {
    return _value;
  }

  static Binary intToBinary(int a) {
    bool isNegative = a < 0;
    a = a.abs();

    IntList bits = [];

    while (a > 0) {
      bits.add(a % 2);
      a = (a / 2).floor();
    }
    for (var i = bits.length; i < 24; i++) bits.add(0);

    if (isNegative) {
      for (var i = 0; i < bits.length; i++) {
        bits[i] = (bits[i] + 1) % 2;
      }
      for (var i = 0; i < bits.length; i++) {
        if (bits[i] == 0) {
          bits[i] = 1;
          break;
        } else
          bits[i] = 0;
      }
    }

    String val = '';
    for (var i = bits.length - 1; i >= 0; i--) {
      val += bits[i].toString();
    }

    return Binary(val);
  }

  static int binaryToInt(Binary a) {
    String s = a.toString();
    int val = 0;
    for (var i = s.length - 1, k = 1; i >= 0; i--, k *= 2) {
      val += int.parse(s[i]) * k;
    }
    return val;
  }
}
