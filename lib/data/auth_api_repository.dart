import 'package:todo/data/backend_api_repository.dart';

class AuthenticatedAPIHelper {
  final String basePath = '/';
  AuthenticatedAPIHelper();
}

class AuthenticatedAPIRepository extends APIRepository {
  AuthenticatedAPIRepository({
    required AuthenticatedAPIHelper helper,
  }) : super(basePath: helper.basePath);

  @override
  Map<String, String> get headers {
    final result = super.headers;
    result['Authorization'] = 'Bearer';
    return result;
  }
}
