// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension CancelTokenExtension on AutoDisposeRef {
  /// creates a token to cancel API requests
  CancelToken cancelToken() {
    final token = CancelToken();
    onCancel(token.cancel);
    return token;
  }
}
