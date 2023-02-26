import 'AdminUser.dart';
import 'User.dart';

class UserManager<T extends User> {
  List<T> _users = [];

  void add(T user) {
    this._users.add(user);
  }

  T get(int index) {
    if (index >= 0 && index < this._users.length) return this._users[index];
    throw RangeError.index(index, this._users.length);
  }

  T remove(int index) {
    return this._users.removeAt(index);
  }

  void printAll() {
    List<String> list = [];
    for (T user in this._users) {
      if (user is AdminUser)
        list.add(user.getMailSystem());
      else
        list.add(user.getEmail());
    }
    print(list);
  }
}
