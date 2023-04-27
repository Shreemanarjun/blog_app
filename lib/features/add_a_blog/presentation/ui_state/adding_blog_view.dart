import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class AddingBlogView extends StatelessWidget {
  const AddingBlogView({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      LottieBuilder.asset(
        'assets/animation/loading.json',
      ).flexible(),
    ].vStack();
  }
}
