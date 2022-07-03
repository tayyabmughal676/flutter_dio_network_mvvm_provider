class AppException implements Exception {
  final _message;

  final _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid request');
}

class NotFoundException extends AppException {
  NotFoundException([String? message]) : super(message, "Not Found");
}

class ForbiddenException extends AppException {
  ForbiddenException([String? message]) : super(message, "Forbidden");
}

class InternalServerError extends AppException {
  InternalServerError([String? message])
      : super(message, "Internal Server Error");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String? message])
      : super(message, 'Unauthorised request');
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}
