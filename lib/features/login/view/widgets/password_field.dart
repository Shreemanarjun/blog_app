import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:velocity_x/velocity_x.dart';

class PasswordFormField extends ConsumerWidget {
  const PasswordFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return FormBuilderTextField(
      obscureText: !ref.watch(showPasswordPod),
      name: 'password',
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: l10n.passwordhint,
        labelText: l10n.passwordlbl,
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(
          Icons.lock,
          color: Vx.cyan700,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            ref.read(showPasswordPod.notifier).update((state) => !state);
          },
          icon: ref.watch(showPasswordPod)
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
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
