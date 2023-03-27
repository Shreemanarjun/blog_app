abstract class ITokenService {
  Future<void> saveToken({required String accessToken});
  Future<void> deleteToken();
  Future<String?> getToken();
}
