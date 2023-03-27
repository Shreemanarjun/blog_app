import 'package:blog_app/data/service/token/i_token_service.dart';
import 'package:blog_app/data/service/token/token_service.dart';
import 'package:blog_app/shared/pod/token_box_pod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokenServicePod = Provider.autoDispose<ITokenService>((ref) {
  return TokenService(tokenBox: ref.watch(tokenBoxPod));
});
