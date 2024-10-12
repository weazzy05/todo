import 'dart:async';
import 'dart:io';

class RemoteRequestUtils {
  static const timeOutDuration = Duration(seconds: 5);

  static FutureOr<T> throwTimeOutInternetConnection<T>() =>
      throw const SocketException('no Internet');

  static Map<String, String> createRevisionHeader(int revision) {
    return {'X-Last-Known-Revision': '$revision'};
  }
}
