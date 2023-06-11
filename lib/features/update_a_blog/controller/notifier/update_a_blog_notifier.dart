import 'dart:async';

import 'package:blog_app/features/update_a_blog/state/update_a_blog_state.dart';
import 'package:blog_app/shared/dio/dio_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

class UpdateBlogNotifier extends AutoDisposeAsyncNotifier<UpadateABlogState> {
  @override
  FutureOr<UpadateABlogState> build() {
    return const InitialUpdateBlogState();
  }

  Future<void> updateABlog({
    required int blogId,
    required String title,
    required String description,
    required void Function(Object) onError,
    required VoidCallback onUpdated,
  }) async {
    state = const AsyncData(UpdatingBlogState());
    final blogupdaterequest = BlogUpdateRequest().rebuild((s) {
      s
        ..blogId = blogId
        ..title = title
        ..description = description;
      return s;
    });
    state = await AsyncValue.guard(() async {
      final blogresponse = await ref
          .watch(openapiPod)
          .getBlogsApi()
          .blogPatch(blogUpdateRequest: blogupdaterequest);
      if (blogresponse.statusCode == 200) {
        onUpdated();
        return const UpdatedBlogState();
      } else {
        onError(blogresponse.data.toString());
        return ErrorUpdatingBlogState(error: blogresponse.data.toString());
      }
    });
  }
}
