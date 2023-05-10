import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themePod = Provider.autoDispose<CustomFlexTheme>((ref) {
  return CustomFlexTheme();
});

class CustomFlexTheme {
  ThemeData lightTheme = FlexThemeData.light(
    scheme: FlexScheme.aquaBlue,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 7,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      useM2StyleDividerInM3: true,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        // replace default CupertinoPageTransitionsBuilder with this
        TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );
  ThemeData get dartkTheme => FlexThemeData.dark(
        scheme: FlexScheme.aquaBlue,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useM2StyleDividerInM3: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            // replace default CupertinoPageTransitionsBuilder with this
            TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          },
        ),
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      );
}
