import 'Binary.dart';
import 'Point.dart';
import 'math_functions.dart';
import 'string_functions.dart';
import 'extensions.dart';
import 'users/AdminUser.dart';
import 'users/GeneralUser.dart';
import 'users/User.dart';
import 'users/UserManager.dart';

void main(List<String> args) {
  // task 1
  int gcf = greatestCommonFactor(18, 12);
  int lcm = leastCommonMultiple(20, 15);
  print(gcf);
  print(lcm);
  // task 2
  print(intToBinary(9));
  print(binaryToInt(Binary('1101')));
  // task 3
  print(getNumbersFromString('asasd 15 5.4 asda45 asdd -884 asd -50.785'));
  // task 4
  print(getCountOfWords(
      ['hey', 'key', 'hey', 'map', 'cap', 'hash', 'map', 'hey']));
  // task 5
  print(getIntsInString('one, two, zero, zero'));
  // task 6:
  Point pointA = Point(2, -1, 0);
  Point pointB = Point.zero();
  Point pointC = Point.unitVector();
  print(pointA.distanceTo(pointB));
  print(Point.areaOfTriangle(pointA, pointB, pointC));
  // task 7:
  print(625.nthroot(4));
  // task 8:
  UserManager userManager = UserManager();
  userManager.add(GeneralUser("user1@mail.com"));
  userManager.add(AdminUser("admin@mail.com"));
  userManager.add(GeneralUser("user2@mail.com"));
  userManager.printAll();
  userManager.remove(0);
  userManager.printAll();
}
