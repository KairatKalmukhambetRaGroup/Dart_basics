import 'dart:math';

extension NewNum on num {
  num nthroot(int n) {
    num root = this / 2;
    // num i = 0;
    num prevRoot = root;

    do {
      prevRoot = root;
      root = 1 / n * ((n - 1) * root + this / pow(root, n - 1));
      // i++;
      // print('Iteration $i: root = $root');
    } while (root != prevRoot);
    // print('root = $root');
    return root;
  }
}
