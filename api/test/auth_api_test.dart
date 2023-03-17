import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AuthApi
void main() {
  final instance = Openapi().getAuthApi();

  group(AuthApi, () {
    // Performs the given operation on the given values and returns the result
    //
    //Future<MyToken> loginPost(UserLoginRequest userLoginRequest) async
    test('test loginPost', () async {
      // TODO
    });

    // Performs the given operation on the given values and returns the result
    //
    //Future<SuccessMessage> signupPost(UserSignUpRequest userSignUpRequest) async
    test('test signupPost', () async {
      // TODO
    });

  });
}
