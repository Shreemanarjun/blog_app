import 'package:blog_app/features/add_a_blog/view/widgets/description_field.dart';
import 'package:blog_app/features/add_a_blog/view/widgets/title_field.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class UpdateBlogInitialView extends StatelessWidget {
  const UpdateBlogInitialView({required this.onUpdatePressed, super.key});
  final VoidCallback onUpdatePressed;
  @override
  Widget build(BuildContext context) {
    return [
      const TitleField().py8().flexible(),
      const DescriptionField().flexible(),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        onPressed: onUpdatePressed,
        child: 'Update blog'.text.make(),
      ).p8().flexible(),
    ].vStack(
      crossAlignment: CrossAxisAlignment.stretch,
      axisSize: MainAxisSize.min,
    );
  }
}
