import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginTitleText extends StatelessWidget {
  const LoginTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return 'Login'
        .text
        .headline1(context)
        .xl2
        .bold
        .textStyle(
          GoogleFonts.getFont('Lato'),
        )
        .make();
  }
}
