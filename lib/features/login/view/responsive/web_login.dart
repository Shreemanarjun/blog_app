import 'package:blog_app/features/login/view/widgets/login_form.dart';
import 'package:blog_app/features/login/view/widgets/note_animation.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginMobileView extends StatelessWidget {
  const LoginMobileView({
    required GlobalKey<FormBuilderState> formKey,
    super.key,
  }) : _formKey = formKey;

  final GlobalKey<FormBuilderState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: <Widget>[
        const AppTitleHeader().flexible(),
        const NoteAnimation().flexible(),
        LoginForm(
          formkey: _formKey,
        ).p8().card.elevation(8).make().flexible(flex: 3),
      ].vStack().scrollVertical(),
    );
  }
}
