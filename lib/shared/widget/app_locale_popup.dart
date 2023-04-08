import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/shared/pod/locale_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class AppLocalePopUp extends ConsumerWidget {
  const AppLocalePopUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<Locale>(
      initialValue: AppLocalizations.supportedLocales.first,
      // Callback that sets the selected popup menu item.
      onSelected: (locale) {
        ref
            .read(localePod.notifier)
            .changeLocale(context: context, locale: locale);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<Locale>>[
        ...AppLocalizations.supportedLocales.map(
          (e) {
            final l10n = context.l10n;

            return PopupMenuItem<Locale>(
              value: e,
              child: l10n.localeName == e.toLanguageTag()
                  ? <Widget>[
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                      getLanguageName(e).text.bold.isIntrinsic.make(),
                    ].hStack()
                  : getLanguageName(e).text.isIntrinsic.make(),
            );
          },
        )
      ],
    );
  }
}

String getLanguageName(Locale e) {
  final languageMap = {'en': 'English', 'hi': 'हिंदी', 'or': 'ଓଡିଆ'};
  return languageMap[e.languageCode] ?? 'Unknown language';
}
