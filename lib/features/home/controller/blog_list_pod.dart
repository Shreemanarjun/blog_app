import 'package:blog_app/shared/dio/dio_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

final blogListPod = FutureProvider.autoDispose<Blogs>((ref) async {
  final blogsresponse = await ref.watch(openapiPod).getBlogsApi().blogGet();
  return blogsresponse.data!;
});
