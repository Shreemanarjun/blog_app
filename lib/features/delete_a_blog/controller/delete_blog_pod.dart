import 'package:blog_app/features/delete_a_blog/controller/notifier/delete_notifier.dart';
import 'package:blog_app/features/delete_a_blog/state/delete_blog_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deleteBlogPod = AsyncNotifierProvider.autoDispose
    .family<DeleteBlogNotifier, DeleteBlogState, int>(DeleteBlogNotifier.new);
