// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes, use_super_parameters, unnecessary_lambdas, lines_longer_than_80_chars
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:blog_app/features/login/view/login_view.dart' deferred as _i1;
import 'package:flutter/material.dart' as _i3;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    LoginView.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.LoginView(),
        ),
      );
    }
  };
}

/// generated route for
/// [_i1.LoginView]
class LoginView extends _i2.PageRouteInfo<void> {
  const LoginView({List<_i2.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
