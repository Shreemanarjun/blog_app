import 'package:blog_app/data/service/token/i_token_service.dart';
import 'package:dio/dio.dart';

class TokenAuthInterceptor extends Interceptor {
  TokenAuthInterceptor({required this.tokenService});

  final ITokenService tokenService;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(
      {'Authorization': 'Bearer ${await tokenService.getToken()}'},
    );
    super.onRequest(options, handler);
  }
}
