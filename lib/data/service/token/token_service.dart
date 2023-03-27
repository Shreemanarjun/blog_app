// ignore_for_file: strict_raw_type
import 'package:blog_app/data/service/token/i_token_service.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TokenService implements ITokenService {
  TokenService({required this.tokenBox});

  final Box tokenBox;

  final tokenKey = 'token';
  @override
  Future<void> deleteToken() async {
    await tokenBox.delete(tokenKey);
  }

  @override
  Future<String?> getToken() async {
    final token = tokenBox.get(tokenKey);
    if (token != null) {
      return token.toString();
    } else {
      return null;
    }
  }

  @override
  Future<void> saveToken({required String accessToken}) async {
    await tokenBox.put(tokenKey, accessToken);
  }
}
