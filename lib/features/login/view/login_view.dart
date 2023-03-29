import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/features/login/view/responsive/mobile_login.dart';
import 'package:blog_app/features/login/view/responsive/web_login.dart';
import 'package:blog_app/features/login/view/widgets/logged_in_view.dart';
import 'package:blog_app/l10n/l10n.dart';
import 'package:blog_app/shared/widget/app_locale_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'LoginRouter',
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
    final l10n = context.l10n;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel: 'Close',
            pageBuilder: (context, animation, secondaryAnimation) {
              return const Center(
                child: Material(
                  child: AppLocalePopUp(),
                ),
              );
            },
          );
        },
        icon: const Icon(Icons.translate),
        label: l10n.changeLanguage.text.make(),
      ),
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final isloggedin = ref.watch(isLoggedInPod);
            return isloggedin
                ? const LoggedInView()
                : VxResponsive(
                    large: LoginWebView(
                      formkey: _formKey,
                    ),
                    xlarge: LoginWebView(
                      formkey: _formKey,
                    ),
                    medium: LoginWebView(
                      formkey: _formKey,
                    ),
                    fallback: LoginMobileView(formKey: _formKey),
                  );
          },
        ),
      ),
    );
  }
}
