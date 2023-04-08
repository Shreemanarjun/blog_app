import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/shared/pod/locale_pod.dart';
import 'package:blog_app/shared/widget/app_locale_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platform_info/platform_info.dart';
import 'package:velocity_x/velocity_x.dart';

class AppLocaleDialog extends StatelessWidget {
  const AppLocaleDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Center(
      child: SizedBox(
        height: 200,
        width: Platform.I.isDesktop ? 400 : null,
        child: Stack(
          children: [
            Dialog(
              child: Center(
                child: Column(
                  children: [
                    l10n.changeLanguage.text.bold.xl.isIntrinsic.make().py24(),
                    Wrap(
                      children: [
                        ...AppLocalizations.supportedLocales.map(
                          (e) => l10n.localeName == e.toLanguageTag()
                              ? TextButton.icon(
                                  onPressed: null,
                                  icon: const Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  label: getLanguageName(e)
                                      .text
                                      .bold
                                      .xl
                                      .isIntrinsic
                                      .strutStyle(
                                        const StrutStyle(
                                          forceStrutHeight: true,
                                        ),
                                      )
                                      .make(),
                                )
                              : Consumer(
                                  builder: (context, ref, child) {
                                    return ElevatedButton(
                                      onPressed: () {
                                        ref
                                            .read(localePod.notifier)
                                            .changeLocale(
                                              context: context,
                                              locale: e,
                                            );
                                      },
                                      child: getLanguageName(e)
                                          .text
                                          .bold
                                          .xl
                                          .isIntrinsic
                                          .strutStyle(
                                            const StrutStyle(
                                              forceStrutHeight: true,
                                            ),
                                          )
                                          .make(),
                                    );
                                  },
                                ).px4(),
                        )
                      ],
                    )
                  ],
                ).scrollVertical(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
