import 'dart:async';

import 'package:blog_app/features/login/state/login_state.dart';
import 'package:blog_app/logger.dart';
import 'package:blog_app/shared/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

class LoginNotifier extends AutoDisposeAsyncNotifier<LoginState> {
  @override
  FutureOr<LoginState> build() {
    return IntialLoginState();
  }

  Future<void> login({
    required String username,
    required String password,
  }) async {
    state = AsyncData(LoggingInState());
    state = await AsyncValue.guard(() async {
      final userloginRequest = UserLoginRequest().rebuild((s) {
        s
          ..username = username
          ..password = password;
        return s;
      });

      final result = await ref
          .watch(openapiPod)
          .getAuthApi()
          .loginPost(userLoginRequest: userloginRequest);
      if (result.statusCode == 200) {
        final mytoken = result.data;
        talker.log(mytoken);
        return LoggedInState();
      } else {
        return LoginErrorState(error: result.data.toString());
      }
    });
  }
}
