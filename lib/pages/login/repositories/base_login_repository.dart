abstract class BaseLoginRepository {
  Future<String> login({
    required String username,
    required String password,
  });
}
