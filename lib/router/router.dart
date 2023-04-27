import 'package:auto_route/auto_route.dart';
import 'package:blog_app/data/service/token/i_token_service.dart';
import 'package:blog_app/router/guards/splash_guard.dart';
import 'package:blog_app/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({required this.tokenService});

  final ITokenService tokenService;
  @override
  late final List<AutoRoute> routes = [
    AutoRoute(
      page: LoginRouter.page,
      initial: true,
      guards: [
        LoginGuard(
          tokenService: tokenService,
        )
      ],
    ),
    AutoRoute(
      page: HomeRouter.page,
      path: '/home',
    ),
    AutoRoute(
      page: AddABlogRouter.page,
      path: '/addABlog',
      fullscreenDialog: true,
    ),
  ];
}
