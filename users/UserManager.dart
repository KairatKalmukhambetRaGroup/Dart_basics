import 'AdminUser.dart';
import 'User.dart';

class UserManager<T extends User> {
  List<T> users = [];

  void add(T user) {
    users.add(user);
  }

  T get(int index) {
    if (index >= 0 && index < users.length) return users[index];
    throw RangeError.index(index, users.length);
  }

  T remove(int index) {
    return users.removeAt(index);
  }

  void printAll() {
    List<String> list = [];
    for (T user in users) {
      if (user is AdminUser)
        list.add(user.getMailSystem());
      else
        list.add(user.getEmail());
    }
    print(list);
  }
}
