import 'package:auto_route/auto_route.dart';
import 'package:blog_app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AutoRoute(
      page: LoginView.page,
      path: '/',
    )
  ];
}
