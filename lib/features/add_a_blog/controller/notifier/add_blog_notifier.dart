import 'dart:async';

import 'package:blog_app/features/add_a_blog/state/add_blog_state.dart';
import 'package:blog_app/shared/dio/dio_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

class AddBlogNotifier extends AutoDisposeAsyncNotifier<AddBlogState> {
  @override
  FutureOr<AddBlogState> build() {
    return const InitialBlogState();
  }

  Future<void> addABlog({
    required String title,
    required String description,
    required void Function(Object) onError,
    required VoidCallback onAdded,
  }) async {
    state = const AsyncData(AddingBlogState());
    final blogrequest = BlogRequest().rebuild((s) {
      s
        ..title = title
        ..description = description;
      return s;
    });

    state = await AsyncValue.guard(() async {
      final blogsresponse = await ref
          .watch(openapiPod)
          .getBlogsApi()
          .blogPost(blogRequest: blogrequest);
      if (blogsresponse.statusCode == 201 || blogsresponse.statusCode == 200) {
        onAdded();
        return const AddedBlogState();
      } else {
        onError(blogsresponse.data.toString());

        return AddBlogErrorState(
          error: blogsresponse.data.toString(),
        );
      }
    });
  }
}
