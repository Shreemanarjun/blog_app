import 'package:auto_route/auto_route.dart';
import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/features/login/view/responsive/mobile_login.dart';
import 'package:blog_app/features/login/view/responsive/web_login.dart';
import 'package:blog_app/features/login/view/widgets/change_language_floating_btn.dart';
import 'package:blog_app/features/login/view/widgets/logged_in_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage(
  name: 'LoginRouter',
  deferredLoading: true,
)
class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> onLogin() async {
    if (_formKey.currentState!.validate()) {
      final fields = _formKey.currentState!.fields;
      final username = fields['username']?.value as String?;
      final password = fields['password']?.value as String?;
      if (username != null && password != null) {
        await ref.read(loginPod.notifier).login(
              username: username,
              password: password,
            );
      }
    }
  }

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: const ChangeLanguageFloatingBtn(),
      body: SafeArea(
        child: FormBuilder(
          key: _formKey,
          initialValue: kDebugMode
              ? {
                  'username': 'Arjun',
                  'password': 'password',
                }
              : {},
          child: Consumer(
            builder: (context, ref, child) {
              final isloggedin = ref.watch(isLoggedInPod);
              return isloggedin
                  ? const LoggedInView()
                  : VxResponsive(
                      large: LoginWebView(
                        onLoginPressed: onLogin,
                      ),
                      xlarge: LoginWebView(
                        onLoginPressed: onLogin,
                      ),
                      medium: LoginWebView(
                        onLoginPressed: onLogin,
                      ),
                      fallback: LoginMobileView(
                        onLoginPressed: onLogin,
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
