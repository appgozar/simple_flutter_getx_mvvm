import '../../shared/exceptions/server_exception.dart';
import 'base_login_repository.dart';

class LoginRepository extends BaseLoginRepository {
  @override
  Future<String> login({
    required String username,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 2));

    if (username == 'admin' && password == 'admin') {
      return 'token';
    }

    throw ServerException('Username and password does not match');
  }
}
