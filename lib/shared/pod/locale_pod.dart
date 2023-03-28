import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/logger.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocaleNotifier extends StateNotifier<Locale> {
  LocaleNotifier() : super(const Locale.fromSubtags(languageCode: 'en'));

  void changeLocale({required BuildContext context, required Locale locale}) {
    final isSupported = AppLocalizations.supportedLocales.contains(locale);
    if (isSupported) {
      state = locale;
    } else {
      talker.debug('language not supported');
    }
  }
}

final localePod = StateNotifierProvider.autoDispose<LocaleNotifier, Locale>(
  (ref) => LocaleNotifier(),
);
