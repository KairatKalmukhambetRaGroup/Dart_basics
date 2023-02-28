extension NewNum on num {
  num power(num a, num b) {
    num tmp = a;
    if (b == 0) return 1;
    if (b == 1) return a;
    for (var i = 1; i < b; i++) {
      tmp *= a;
    }
    return tmp;
  }

  num nthroot(int n) {
    num root = this / 2;
    // num i = 0;
    num prevRoot = root;

    do {
      prevRoot = root;
      root = 1 / n * ((n - 1) * root + this / power(root, n - 1));
      // i++;
      // print('Iteration $i: root = $root');
    } while (root != prevRoot);
    // print('root = $root');
    return root;
  }
}
