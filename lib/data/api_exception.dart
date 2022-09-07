abstract class APIException implements Exception {
  final String message;
  const APIException(this.message);

  @override
  String toString() => message;
}

class APIGenericException extends APIException {
  static const String type = 'API Call Failed';

  const APIGenericException(String message) : super('$type: $message');
}

class APINotFoundException extends APIException {
  static const String type = 'Not found';

  const APINotFoundException(String message) : super('$type: $message');
}

class APIValidationException extends APIException {
  const APIValidationException(String message) : super(message);
}

class APIAuthenticationException extends APIException {
  static const String type = 'Authentication Failed';

  const APIAuthenticationException(String message) : super('$type: $message');
}

class APIInternalServerException extends APIException {
  static const String type = 'Internal Server Error';

  const APIInternalServerException()
      : super(
          '$type: Something is wrong on our side, '
          'we are investigating the issue',
        );
}

class InternalMobileException extends APIException {
  static const String type = 'Internal Error';

  const InternalMobileException()
      : super(
          '$type: Something is wrong on our side, '
          'we are investigating the issue',
        );
}
