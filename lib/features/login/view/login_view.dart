import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/login/view/widgets/login_form.dart';
import 'package:blog_app/features/login/view/widgets/note_animation.dart';
import 'package:blog_app/features/login/view/widgets/title_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  deferredLoading: true,
)
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: VxResponsive(
          large: LoginWebView(
            formkey: _formKey,
          ),
          xlarge: LoginWebView(
            formkey: _formKey,
          ),
          fallback: Padding(
            padding: const EdgeInsets.all(8),
            child: <Widget>[
              const AppTitleHeader().flexible(),
              const NoteAnimation().flexible(),
              LoginForm(
                formkey: _formKey,
              ).p8().card.make().flexible(flex: 3),
            ].vStack().scrollVertical(),
          ),
        ),
      ),
    );
  }
}

class LoginWebView extends StatelessWidget {
  const LoginWebView({
    required this.formkey,
    super.key,
  });
  final GlobalKey<FormBuilderState> formkey;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      [
        const AppTitleHeader().flexible(),
        const NoteAnimation().flexible(),
      ].vStack().expand(),
      LoginForm(
        formkey: formkey,
      )
          .p8()
          .card
          .make()
          .box
          .height(context.safePercentHeight * 40)
          .makeCentered()
          .pOnly(right: context.screenWidth * 0.1)
          .flexible(),
    ].hStack();
  }
}
