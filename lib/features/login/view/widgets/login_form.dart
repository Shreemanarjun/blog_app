import 'package:blog_app/features/login/view/widgets/login_btn.dart';
import 'package:blog_app/features/login/view/widgets/login_field.dart';
import 'package:blog_app/features/login/view/widgets/login_title_text.dart';
import 'package:blog_app/features/login/view/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    required this.onLoginPressed,
    super.key,
  });

  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            VxResponsive(
              fallback: const LoginTitleText().centered(),
              large: const LoginTitleText().centered(),
            ).py8(),
            const LoginFormField().py8(),
            const PasswordFormField().py8(),
            LoginButtonView(
              onLoginPressed: onLoginPressed,
            ).py8()
          ],
        ).scrollVertical();
      },
    );
  }
}
