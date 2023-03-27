import 'package:blog_app/features/login/controller/notifier/login_notifier.dart';
import 'package:blog_app/features/login/state/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginPod = AsyncNotifierProvider.autoDispose<LoginNotifier, LoginState>(
  LoginNotifier.new,
);

final enableLoginForm = StateProvider.autoDispose<bool>((ref) {
  return !ref.watch(loginPod).isLoading;
});

final isLoggedInPod = Provider.autoDispose<bool>((ref) {
  final loggedin = ref.watch(loginPod).value is LoggedInState;
  return loggedin;
});

final showPasswordPod = StateProvider.autoDispose<bool>((ref) {
  if (ref.watch(loginPod).isLoading) {
    return false;
  }
  return true;
});
