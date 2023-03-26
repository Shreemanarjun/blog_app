import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/login/view/responsive/mobile_login.dart';
import 'package:blog_app/features/login/view/responsive/web_login.dart';
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
          fallback: LoginMobileView(formKey: _formKey),
        ),
      ),
    );
  }
}
