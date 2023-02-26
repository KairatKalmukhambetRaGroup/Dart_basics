abstract class User {
  String _email = '';
  User(this._email);
  String getEmail() {
    return _email;
  }

  void setEmail(String _email) {
    this._email = _email;
  }
}

mixin AdminMixin on User {
  String getMailSystem() {
    return _email.split('@')[1];
  }
}
