abstract class User {
  String email = '';
  User(this.email);
  String getEmail() {
    return email;
  }
}

mixin AdminMixin on User {
  String getMailSystem() {
    return email.split('@')[1];
  }
}
