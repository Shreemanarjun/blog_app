import 'package:blog_app/core/theme/theme.dart';
import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/router/router_pod.dart';
import 'package:blog_app/shared/pod/locale_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approuter = ref.watch(autoRouterPod);
    final theme = ref.watch(themePod);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme.lightTheme,
      darkTheme: theme.dartkTheme,
      themeMode: ThemeMode.light,
      routerConfig: approuter.config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: ref.watch(localePod),
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
