import 'package:blog_app/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoRouterPod = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});
