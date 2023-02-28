import 'Binary.dart';
import 'Point.dart';
import 'Math.dart';
import 'NewString.dart';
import 'extensions.dart';
import 'users/AdminUser.dart';
import 'users/GeneralUser.dart';
import 'users/User.dart';
import 'users/UserManager.dart';

void main(List<String> args) {
  // task 1
  int gcf = Math.greatestCommonFactor(18, 12);
  int lcm = Math.leastCommonMultiple(20, 15);
  print('Task 1:');
  print(gcf);
  print(lcm);
  print(Math.breakIntoPrimeFactors(15825));
  // task 2
  print('\nTask 2:');
  print('Converting integers to binary using 2\'s compliment:');
  print(Binary.intToBinary(88));
  print(Binary.intToBinary(-88));
  print(Binary.binaryToInt(Binary('1101')));
  // task 3
  print('\nTask 3:');
  print(NewString.getNumbersFromString(
      'asasd 15 5.4 asda45 asdd -884 asd -50.785'));
  // task 4
  print('\nTask 4:');
  print(NewString.getCountOfWords(
      ['hey', 'key', 'hey', 'map', 'cap', 'hash', 'map', 'hey']));
  // task 5
  print('\nTask 5:');
  print(NewString.getIntsInString('one, two, zero, zero'));
  // task 6:
  print('\nTask 6:');
  Point pointA = Point(2, -1, 0);
  Point pointB = Point.zero();
  Point pointC = Point.unitVector();
  print(pointA.distanceTo(pointB));
  print(Point.areaOfTriangle(pointA, pointB, pointC));
  // task 7:
  print('\nTask 7:');
  print(625.nthroot(4));
  // task 8:
  print('\nTask 8:');
  UserManager userManager = UserManager();
  userManager.add(GeneralUser("user1@mail.com"));
  userManager.add(AdminUser("admin@mail.com"));
  userManager.add(GeneralUser("user2@mail.com"));
  userManager.printAll();
  userManager.remove(0);
  userManager.printAll();
}
