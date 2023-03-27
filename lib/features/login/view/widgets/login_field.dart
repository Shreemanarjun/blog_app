
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginFormField extends StatelessWidget {
  const LoginFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
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
    );
  }
}
