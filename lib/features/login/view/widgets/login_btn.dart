import 'package:blog_app/features/login/controller/login_pod.dart';
import 'package:blog_app/features/login/state/login_state.dart';
import 'package:blog_app/shared/helper/error_helper.dart';
import 'package:blog_app/shared/riverpod_extension/asyncvalue_easy_when.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginButtonView extends ConsumerWidget {
  const LoginButtonView({
    required this.onLoginPressed,
    super.key,
  });
  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginStateAsync = ref.watch(loginPod);
    return loginStateAsync.easyWhen(
      data: (loginState) {
        switch (loginState) {
          case final IntialLoginState _:
            return ElevatedButton(
              onPressed: ref.watch(enableLoginFormPod) ? onLoginPressed : null,
              child: 'Login'.text.make(),
            );
          case LoggedInState _:
            return ElevatedButton(
              onPressed: null,
              child: 'Loggedin'.text.make(),
            );
          case final LoginErrorState s:
            return Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed:
                      ref.watch(enableLoginFormPod) ? onLoginPressed : null,
                  child: 'Retry Login'.text.make(),
                ),
                s.error.easyError().p8(),
              ],
            );
        }
      },
      errorWidget: (error, stackTrace) => Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: ref.watch(enableLoginFormPod) ? onLoginPressed : null,
            child: 'Retry Login'.text.make(),
          ),
          error.easyError().p8(),
        ],
      ),
      loadingWidget: () => ElevatedButton(
        onPressed: null,
        child: [
          const CircularProgressIndicator.adaptive()
              .px8()
              .box
              .height(24)
              .width(40)
              .make(),
          'Logging you in'.text.make(),
        ].hStack(),
      ),
      includedefaultDioErrorMessage: true,
    );
  }
}
