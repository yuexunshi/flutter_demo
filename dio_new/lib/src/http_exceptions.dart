class AppException implements Exception {
  final String? _message;

  String get message => _message ?? this.runtimeType.toString();

  final int? _code;

  int get code => _code ?? -1;

  AppException([this._message, this._code]);

  String toString() {
    return "code:$code--message=$message";
  }
}

/// 客户端请求错误
class BadRequestException extends AppException {
  BadRequestException({String? message, int? code}) : super(message, code);
}
/// 服务端响应错误
class BadServiceException extends AppException {
  BadServiceException({String? message, int? code}) : super(message, code);
}



class UnknownException extends AppException {
  UnknownException([String? message]) : super(message);
}

class CancelException extends AppException {
  CancelException([String? message]) : super(message);
}

class NetworkException extends AppException {
  NetworkException({String? message, int? code}) : super(message, code);
}

/// 401
class UnauthorisedException extends AppException {
  UnauthorisedException({String? message, int? code = 401}) : super(message);
}

class BadResponseException extends AppException {
  dynamic? data;

  BadResponseException([this.data]) : super();
}
