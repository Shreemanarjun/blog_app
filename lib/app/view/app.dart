import 'package:auto_route/auto_route.dart';
import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/logger.dart';
import 'package:blog_app/router/router_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approuter = ref.watch(autoRouterPod);
    ref.listen(isGuardCheckingPod, (previous, next) {
      talker.debug('guard checking $next');
    });
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            // replace default CupertinoPageTransitionsBuilder with this
            TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
      ),
      routerConfig: approuter.config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
