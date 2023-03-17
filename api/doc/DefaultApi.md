# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://web-production-147b.up.railway.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**allTokensGet**](DefaultApi.md#alltokensget) | **GET** /allTokens | 
[**allUserGet**](DefaultApi.md#alluserget) | **GET** /allUser | 
[**jsonKotlinxSerializationGet**](DefaultApi.md#jsonkotlinxserializationget) | **GET** /json/kotlinx-serialization | 
[**nameGet**](DefaultApi.md#nameget) | **GET** /name | 


# **allTokensGet**
> Tokens allTokensGet()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.allTokensGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->allTokensGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Tokens**](Tokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **allUserGet**
> Users allUserGet()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.allUserGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->allUserGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Users**](Users.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jsonKotlinxSerializationGet**
> jsonKotlinxSerializationGet()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    api.jsonKotlinxSerializationGet();
} catch on DioError (e) {
    print('Exception when calling DefaultApi->jsonKotlinxSerializationGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nameGet**
> nameGet()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    api.nameGet();
} catch on DioError (e) {
    print('Exception when calling DefaultApi->nameGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

