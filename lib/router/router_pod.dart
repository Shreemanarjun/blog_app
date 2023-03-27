import 'package:blog_app/data/service/token/token_service_pod.dart';
import 'package:blog_app/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoRouterPod = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter(tokenService: ref.watch(tokenServicePod));
});
