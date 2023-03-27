// ignore_for_file: cast_nullable_to_non_nullable

import 'dart:async';

import 'package:blog_app/data/service/token/token_service_pod.dart';
import 'package:blog_app/features/login/state/login_state.dart';
import 'package:blog_app/logger.dart';
import 'package:blog_app/shared/dio/dio_client.dart';
import 'package:dio/dio.dart';
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
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final userloginRequest = UserLoginRequest().rebuild((s) {
        s
          ..username = username
          ..password = password;
        return s;
      });

      try {
        final result = await ref
            .watch(openapiPod)
            .getAuthApi()
            .loginPost(userLoginRequest: userloginRequest);
        talker.debug(result.data);
        final mytoken = result.data;
        talker.log(mytoken);

        await ref
            .read(tokenServicePod)
            .saveToken(accessToken: mytoken!.accessToken!);
        return LoggedInState();
      } on DioError {
        rethrow;
      }
    });
  }
}
