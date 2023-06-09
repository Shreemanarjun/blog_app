# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://web-production-147b.up.railway.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userHelloGet**](UserApi.md#userhelloget) | **GET** /user/hello | 
[**userOkGet**](UserApi.md#userokget) | **GET** /user/ok | 
[**userRefreshAccessTokenPost**](UserApi.md#userrefreshaccesstokenpost) | **POST** /user/refreshAccessToken | 


# **userHelloGet**
> userHelloGet()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: authJWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKeyPrefix = 'Bearer';

final api = Openapi().getUserApi();

try {
    api.userHelloGet();
} catch on DioError (e) {
    print('Exception when calling UserApi->userHelloGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[authJWT](../README.md#authJWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOkGet**
> userOkGet()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: authJWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKeyPrefix = 'Bearer';

final api = Openapi().getUserApi();

try {
    api.userOkGet();
} catch on DioError (e) {
    print('Exception when calling UserApi->userOkGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[authJWT](../README.md#authJWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRefreshAccessTokenPost**
> MyToken userRefreshAccessTokenPost()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: authJWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKeyPrefix = 'Bearer';

final api = Openapi().getUserApi();

try {
    final response = api.userRefreshAccessTokenPost();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->userRefreshAccessTokenPost: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MyToken**](MyToken.md)

### Authorization

[authJWT](../README.md#authJWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

