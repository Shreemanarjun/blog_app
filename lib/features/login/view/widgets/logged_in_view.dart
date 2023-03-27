import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/features/login/view/widgets/note_animation.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:blog_app/router/router.gr.dart';
import 'package:blog_app/router/router_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_language_fonts/google_language_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class LoggedInView extends ConsumerStatefulWidget {
  const LoggedInView({super.key});

  @override
  ConsumerState<LoggedInView> createState() => _LoggedInViewState();
}

class _LoggedInViewState extends ConsumerState<LoggedInView> {
  void enterHome() {
    ref.read(autoRouterPod).replaceAll([const HomeRouter()]);
  }

  @override
  Widget build(BuildContext context) {
    ref.listenManual(
      isLoggedInPod,
      (previous, next) {
        if (next) {
          Future.delayed(
            const Duration(seconds: 2),
            enterHome,
          );
        }
      },
      fireImmediately: true,
    );
    return <Widget>[
      const AppTitleHeader().hero('title').flexible(),
      const Hero(
        tag: 'note',
        child: NoteAnimation(),
      ).flexible(),
      'Welcome to bloggy app'
          .text
          .bold
          .textStyle(
            GoogleFonts.getFont('Lato'),
          )
          .xl
          .makeCentered()
          .flexible(),
      const CircularProgressIndicator.adaptive().p8(),
    ].vStack().scrollVertical().centered();
  }
}
