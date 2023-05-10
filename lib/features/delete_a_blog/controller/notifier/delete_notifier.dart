import 'dart:async';

import 'package:blog_app/features/delete_a_blog/state/delete_blog_state.dart';
import 'package:blog_app/features/home/controller/blog_list_pod.dart';
import 'package:blog_app/shared/dio/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DeleteBlogNotifier
    extends AutoDisposeFamilyAsyncNotifier<DeleteBlogState, int> {
  @override
  FutureOr<DeleteBlogState> build(int arg) {
    return const IntialBlogDeleteState();
  }

  Future<void> deleteBlog() async {
    state = const AsyncData(DeletingBlogState());
    state = await AsyncValue.guard(() async {
      final deleteResponse =
          await ref.watch(openapiPod).getBlogsApi().blogIdDelete(id: arg);

      if (deleteResponse.statusCode == 200 && deleteResponse.data != null) {
        ref.invalidate(blogListPod);
        return const DeletedBlogState();
      } else {
        return DeleteBlogError(error: deleteResponse.data.toString());
      }
    });
  }
}
