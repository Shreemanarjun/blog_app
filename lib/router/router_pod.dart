import 'package:blog_app/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoRouterPod = Provider.autoDispose<AppRouter>((ref) {
  return AppRouter();
});

final isGuardCheckingPod = Provider.autoDispose<bool>((ref) {
  var isLoading = false;
  final autorouter = ref.watch(autoRouterPod);
  autorouter.activeGuardObserver.addListener(() {
    isLoading = autorouter.activeGuardObserver.guardInProgress;
  });
  return isLoading;
});
