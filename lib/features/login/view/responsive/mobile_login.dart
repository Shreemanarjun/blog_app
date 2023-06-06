import 'package:blog_app/features/login/view/widgets/login_form.dart';
import 'package:blog_app/features/login/view/widgets/note_animation.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginMobileView extends StatelessWidget {
  const LoginMobileView({
    required this.onLoginPressed,
    super.key,
  });

  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      const AppTitleHeader().hero('title').flexible(),
      Hero(
        tag: 'note',
        child: const NoteAnimation().h(
          context.safePercentHeight * 40,
        ),
      ).expand(flex: 4),
      LoginForm(
        onLoginPressed: onLoginPressed,
      ).p8().card.elevation(8).make().flexible(flex: 6),
    ].vStack();
  }
}
