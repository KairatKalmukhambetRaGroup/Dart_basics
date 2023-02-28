typedef IntList = List<int>;

class Math {
  static int greatestCommonFactor(int a, int b) {
    if (b == 0) return a;
    return greatestCommonFactor(b, a % b);
  }

  static int leastCommonMultiple(int a, int b) {
    if (a == 0 || b == 0) return 0;
    int gcf = greatestCommonFactor(a, b);
    return ((a * b).abs() / gcf).round();
  }

  static bool isPrime(int num) {
    for (int i = 2; i <= num / 2; i++) {
      if (num % i == 0) return false;
    }
    return true;
  }

  static IntList breakIntoPrimeFactors(int num) {
    IntList primeFactors = [];
    IntList primeNumbers = [2, 3, 5, 7, 11, 13, 17];

    if (num < 1)
      throw Error();
    else if (num == 1) {
      primeFactors.add(1);
    } else if (isPrime(num)) {
      primeFactors.add(num);
    } else {
      int i = 2;
      while (num != 1) {
        if ((primeNumbers.contains(i) || isPrime(i)) && num % i == 0) {
          num = (num / i).round();
          primeFactors.add(i);
          if (!primeNumbers.contains(i)) primeNumbers.add(i);
        } else
          i++;
      }
    }
    return primeFactors;
  }
}
