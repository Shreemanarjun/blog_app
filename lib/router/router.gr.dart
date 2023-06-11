// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:blog_app/features/home/view/home_view.dart' deferred as _i1;
import 'package:blog_app/features/login/view/login_view.dart' deferred as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.HomeView(),
        ),
      );
    },
    LoginRouter.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DeferredWidget(
          _i2.loadLibrary,
          () => _i2.LoginView(),
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginView]
class LoginRouter extends _i3.PageRouteInfo<void> {
  const LoginRouter({List<_i3.PageRouteInfo>? children})
      : super(
          LoginRouter.name,
          initialChildren: children,
        );

  static const String name = 'LoginRouter';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
