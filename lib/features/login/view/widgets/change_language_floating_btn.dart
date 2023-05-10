import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/shared/widget/app_locale_dialog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChangeLanguageFloatingBtn extends StatelessWidget {
  const ChangeLanguageFloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return VxResponsive(
      fallback: FloatingActionButton.extended(
        onPressed: () {
          showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel: 'Close',
            pageBuilder: (context, animation, secondaryAnimation) =>
                const AppLocaleDialog(),
          );
        },
        icon: const Icon(Icons.translate),
        label: l10n.changeLanguage.text.make(),
      ),
    );
  }
}
