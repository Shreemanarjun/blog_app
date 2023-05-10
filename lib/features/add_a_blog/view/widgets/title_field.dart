import 'package:blog_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:velocity_x/velocity_x.dart';

class TitleField extends StatelessWidget {
  const TitleField({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormBuilderTextField(
      name: 'title',
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: l10n.titlehint,
        labelText: l10n.titlelbl,
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(
          Icons.title,
          color: Vx.cyan700,
        ),
      ),
      validator: FormBuilderValidators.compose(
        [
          FormBuilderValidators.required(errorText: l10n.emptyerrortxt),
        ],
      ),
    );
  }
}
