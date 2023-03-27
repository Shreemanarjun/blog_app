import 'package:auto_route/auto_route.dart';
import 'package:blog_app/data/service/token/i_token_service.dart';
import 'package:blog_app/router/router.gr.dart';

class LoginGuard extends AutoRouteGuard {
  LoginGuard({required this.tokenService});

  final ITokenService tokenService;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final token = await tokenService.getToken();
    if (token != null && token.isNotEmpty) {
      await router.replaceAll([const HomeRouter()]);
    } else {
      resolver.next();
    }
  }
}
