import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/features/login/view/widgets/login_btn.dart';
import 'package:blog_app/features/login/view/widgets/login_field.dart';
import 'package:blog_app/features/login/view/widgets/login_title_text.dart';
import 'package:blog_app/features/login/view/widgets/password_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    required this.formkey,
    super.key,
  });
  final GlobalKey<FormBuilderState> formkey;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return FormBuilder(
          key: formkey,
          enabled: ref.watch(enableLoginForm),
          initialValue: kDebugMode
              ? {
                  'username': 'Arjun',
                  'password': 'password',
                }
              : {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              VxResponsive(
                fallback: const LoginTitleText().centered(),
                large: const LoginTitleText().centered(),
              ).py8(),
              const LoginFormField(),
              const PasswordFormField().py8(),
              LoginButtonView(
                formKey: formkey,
              ).py8()
            ],
          ),
        );
      },
    );
  }
}
