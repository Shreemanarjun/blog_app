import 'package:blog_app/features/login/controller/notifier/login_notifier.dart';
import 'package:blog_app/features/login/state/login_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginPod = AsyncNotifierProvider.autoDispose<LoginNotifier, LoginState>(
  LoginNotifier.new,
);
