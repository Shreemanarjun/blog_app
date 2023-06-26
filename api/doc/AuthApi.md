# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://web-production-147b.up.railway.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginPost**](AuthApi.md#loginpost) | **POST** /login | 
[**signupPost**](AuthApi.md#signuppost) | **POST** /signup | 


# **loginPost**
> MyToken loginPost(userLoginRequest)



Performs the given operation on the given values and returns the result

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final UserLoginRequest userLoginRequest = {"username":"Arjun","password":"password"}; // UserLoginRequest | User with username and password

try {
    final response = api.loginPost(userLoginRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->loginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userLoginRequest** | [**UserLoginRequest**](UserLoginRequest.md)| User with username and password | 

### Return type

[**MyToken**](MyToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signupPost**
> SuccessMessage signupPost(userSignUpRequest)



Performs the given operation on the given values and returns the result

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getAuthApi();
final UserSignUpRequest userSignUpRequest = {"username":"Arjun","password":"password"}; // UserSignUpRequest | User with username and password

try {
    final response = api.signupPost(userSignUpRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AuthApi->signupPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSignUpRequest** | [**UserSignUpRequest**](UserSignUpRequest.md)| User with username and password | 

### Return type

[**SuccessMessage**](SuccessMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

