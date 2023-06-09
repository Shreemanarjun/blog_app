import 'package:blog_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class AppTitleHeader extends StatelessWidget {
  const AppTitleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return context.l10n.appTitle.text.xl3
        .textStyle(
          GoogleFonts.getFont('Pacifico'),
        )
        .make();
  }
}
