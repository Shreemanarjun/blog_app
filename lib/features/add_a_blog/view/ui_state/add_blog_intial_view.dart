import 'package:blog_app/features/add_a_blog/view/widgets/description_field.dart';
import 'package:blog_app/features/add_a_blog/view/widgets/title_field.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddBlogIntialView extends StatelessWidget {
  const AddBlogIntialView({
    required this.onLoginPressed,
    super.key,
  });
  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return [
      const TitleField().py8().flexible(),
      const DescriptionField().flexible(),
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
        onPressed: onLoginPressed,
        child: 'Add to blogs'.text.make(),
      ).p8().flexible(),
    ].vStack(
      crossAlignment: CrossAxisAlignment.stretch,
      axisSize: MainAxisSize.min,
    );
  }
}
