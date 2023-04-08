import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for UserApi
void main() {
  final instance = Openapi().getUserApi();

  group(UserApi, () {
    //Future userHelloGet() async
    test('test userHelloGet', () async {
      // TODO
    });

    //Future userOkGet() async
    test('test userOkGet', () async {
      // TODO
    });

    //Future<MyToken> userRefreshAccessTokenPost() async
    test('test userRefreshAccessTokenPost', () async {
      // TODO
    });

  });
}
