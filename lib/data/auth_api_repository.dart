import 'package:injectable/injectable.dart';
import 'package:todo/data/backend_api_repository.dart';

@injectable
class AuthenticatedAPIHelper {
  final String basePath = '/';
  AuthenticatedAPIHelper();
}

@singleton
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
