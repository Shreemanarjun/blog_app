import 'package:blog_app/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

final openapiPod = Provider.autoDispose<Openapi>((ref) {
  return Openapi(
    basePathOverride: 'http://127.0.0.1:8080',
    interceptors: [
      TalkerDioLogger(talker: talker),
    ],
  );
});
