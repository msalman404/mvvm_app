class AppExceptions implements Exception {
  final _msg;
  final _prefix;
  AppExceptions([this._msg, this._prefix]);

  String toString() {
    return '$_msg $_prefix';
  }
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, "Error during communication");
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message]) : super(message, "Invalid request");
}

class UnauthorizedException extends AppExceptions {
  UnauthorizedException([String? message])
      : super(message, "Unauthorized request");
}

class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message]) : super(message, "Invalid input");
}
