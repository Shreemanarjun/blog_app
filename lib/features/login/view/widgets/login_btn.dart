import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/features/login/state/login_state.dart';
import 'package:blog_app/shared/helper/error_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginButtonView extends ConsumerStatefulWidget {
  const LoginButtonView({
    required this.formKey,
    super.key,
  });
  final GlobalKey<FormBuilderState> formKey;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LoginButtonViewState();
}

class _LoginButtonViewState extends ConsumerState<LoginButtonView> {
  Future<void> login() async {
    if (widget.formKey.currentState!.validate()) {
      final fields = widget.formKey.currentState!.fields;
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
  Widget build(BuildContext context) {
    final loginStateAsync = ref.watch(loginPod);
    return loginStateAsync.when(
      data: (loginState) => loginState.map(
        intialLoginState: (p0) => ElevatedButton(
          onPressed: ref.watch(enableLoginForm) ? login : null,
          child: const Text('Login'),
        ),
        loggingInState: (p0) => ElevatedButton(
          onPressed: null,
          child: [
            const CircularProgressIndicator()
                .px8()
                .box
                .height(24)
                .width(32)
                .make(),
            const Text('Logging in'),
          ].hStack(),
        ),
        loggedInState: (p0) => ElevatedButton(
          onPressed: ref.watch(enableLoginForm) ? login : null,
          child: const Text('Loggedin'),
        ),
        loginErrorState: (s) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: ref.watch(enableLoginForm) ? login : null,
                child: const Text('Retry Login'),
              ),
              s.error.easyError(),
            ],
          );
        },
      ),
      error: (error, stackTrace) => Column(
        children: [
          ElevatedButton(
            onPressed: ref.watch(enableLoginForm) ? login : null,
            child: const Text('Retry Login'),
          ),
          error.easyError(),
        ],
      ),
      loading: () => const LinearProgressIndicator(),
    );
  }
}
