import 'package:blog_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:velocity_x/velocity_x.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return FormBuilderTextField(
      name: 'description',
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: l10n.descriptionhint,
        labelText: l10n.descriptionlbl,
        border: const OutlineInputBorder(),
        prefixIcon: const Icon(
          Icons.description,
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
