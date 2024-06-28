class AppExceptions implements Exception {
  final _msg;
  final _prefix;
  AppExceptions([this._msg, this._prefix]);

  String toString() {
    return '$_msg $_prefix';
  }
}
