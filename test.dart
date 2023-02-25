import 'Binary.dart';
import 'math_functions.dart';
import 'string_functions.dart';

void main(List<String> args) {
  int gcf = greatestCommonFactor(18, 12);
  int lcm = leastCommonMultiple(20, 15);
  print(gcf);
  print(lcm);
  print(intToBinary(9));
  print(binaryToInt(Binary('1101')));
  print(getNumbersFromString('asasd 15 5.4 asda45 asdd -884 asd -50.785'));
  print(getCountOfWords(
      ['hey', 'key', 'hey', 'map', 'cap', 'hash', 'map', 'hey']));
  print(getIntsInString('one, two, zero, zero'));
}
