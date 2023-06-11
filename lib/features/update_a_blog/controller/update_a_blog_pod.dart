import 'package:blog_app/features/update_a_blog/controller/notifier/update_a_blog_notifier.dart';
import 'package:blog_app/features/update_a_blog/state/update_a_blog_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final updateABlogPod =
    AsyncNotifierProvider.autoDispose<UpdateBlogNotifier, UpadateABlogState>(
  UpdateBlogNotifier.new,
);
