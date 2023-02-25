import 'User.dart';

class AdminUser extends User with AdminMixin {
  AdminUser(String email) : super(email);
}
