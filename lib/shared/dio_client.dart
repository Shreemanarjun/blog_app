import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

final openapiPod = Provider.autoDispose<Openapi>((ref) {
  return Openapi();
});
