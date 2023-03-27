import 'package:blog_app/data/service/token/token_service_pod.dart';
import 'package:blog_app/shared/dio/auth_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:platform_info/platform_info.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

final openapiPod = Provider.autoDispose<Openapi>((ref) {
  return Openapi(
    basePathOverride: 'http://127.0.0.1:8080',
    interceptors: [
      TokenAuthInterceptor(
        tokenService: ref.watch(
          tokenServicePod,
        ),
      ),
      TalkerDioLogger(
        talker: Talker(
          logger: TalkerLogger(
            output: debugPrint, // add this to avoid this issue.
            settings: TalkerLoggerSettings(
              // disable colors in iOS due to https://github.com/flutter/flutter/issues/20663
              enableColors: !Platform.I.isIOS,
            ),
          ),
        ),
      ),
    ],
  );
});
