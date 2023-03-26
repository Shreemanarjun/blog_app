import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoteAnimation extends StatefulWidget {
  const NoteAnimation({super.key});

  @override
  State<NoteAnimation> createState() => _NoteAnimationState();
}

class _NoteAnimationState extends State<NoteAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroller;
  @override
  void initState() {
    animationcontroller = AnimationController(vsync: this);
    animationcontroller.repeat(period: const Duration(seconds: 3));
    super.initState();
  }

  @override
  void dispose() {
    animationcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset(
      'assets/animation/writing.json',
      controller: animationcontroller,
    );
  }
}
