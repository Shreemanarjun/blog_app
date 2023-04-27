import 'package:blog_app/features/add_a_blog/controller/notifier/add_blog_notifier.dart';
import 'package:blog_app/features/add_a_blog/state/add_blog_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addABlogPod =
    AsyncNotifierProvider.autoDispose<AddBlogNotifier, AddBlogState>(
  AddBlogNotifier.new,
);
