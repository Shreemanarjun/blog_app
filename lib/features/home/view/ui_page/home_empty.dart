import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeEmpty extends StatelessWidget {
  const HomeEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      LottieBuilder.asset('assets/animation/empty.json'),
      'No blogs Here Yet'.text.bold.xl.makeCentered(),
    ].vStack().scrollVertical().centered();
  }
}
