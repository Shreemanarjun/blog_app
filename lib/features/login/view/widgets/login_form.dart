import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/features/login/view/widgets/login_btn.dart';
import 'package:blog_app/features/login/view/widgets/login_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              VxResponsive(
                fallback: const LoginTitleText().centered(),
                large: const LoginTitleText().centered(),
              ).py8(),
              FormBuilderTextField(
                name: 'username',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Enter Username',
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.alternate_email_outlined,
                    color: Vx.cyan700,
                  ),
                ),
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                  ],
                ),
              ),
              FormBuilderTextField(
                name: 'password',
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Enter Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Vx.cyan700,
                  ),
                ),
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                  ],
                ),
              ).py8(),
              LoginButtonView(
                formKey: formkey,
              )
            ],
          ),
        );
      },
    );
  }
}
