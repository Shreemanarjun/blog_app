import 'package:blog_app/features/login/view/widgets/login_form.dart';
import 'package:blog_app/features/login/view/widgets/note_animation.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginWebView extends StatelessWidget {
  const LoginWebView({
    required this.formkey,
    super.key,
  });
  final GlobalKey<FormBuilderState> formkey;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      [
        const AppTitleHeader().hero('title').flexible(),
        const Hero(
          tag: 'note',
          child: NoteAnimation(),
        ).flexible(),
      ].vStack().expand(),
      LoginForm(
        formkey: formkey,
      )
          .p8()
          .card
          .elevation(8)
          .make()
          .box
          .height(context.safePercentHeight * 50)
          .makeCentered()
          .pOnly(right: context.screenWidth * 0.1)
          .flexible(),
    ].hStack();
  }
}
