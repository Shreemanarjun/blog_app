# openapi.api.BlogsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://web-production-147b.up.railway.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blogGet**](BlogsApi.md#blogget) | **GET** /blog | 
[**blogIdDelete**](BlogsApi.md#blogiddelete) | **DELETE** /blog/{id} | 
[**blogPatch**](BlogsApi.md#blogpatch) | **PATCH** /blog | 
[**blogPost**](BlogsApi.md#blogpost) | **POST** /blog | 


# **blogGet**
> Blogs blogGet()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: authJWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKeyPrefix = 'Bearer';

final api = Openapi().getBlogsApi();

try {
    final response = api.blogGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling BlogsApi->blogGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Blogs**](Blogs.md)

### Authorization

[authJWT](../README.md#authJWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogIdDelete**
> Blogs blogIdDelete(id)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: authJWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKeyPrefix = 'Bearer';

final api = Openapi().getBlogsApi();
final int id = 56; // int | id of the blog

try {
    final response = api.blogIdDelete(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BlogsApi->blogIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| id of the blog | 

### Return type

[**Blogs**](Blogs.md)

### Authorization

[authJWT](../README.md#authJWT)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogPatch**
> Blogs blogPatch(blogUpdateRequest)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: authJWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKeyPrefix = 'Bearer';

final api = Openapi().getBlogsApi();
final BlogUpdateRequest blogUpdateRequest = ; // BlogUpdateRequest | Blog update request

try {
    final response = api.blogPatch(blogUpdateRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BlogsApi->blogPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogUpdateRequest** | [**BlogUpdateRequest**](BlogUpdateRequest.md)| Blog update request | 

### Return type

[**Blogs**](Blogs.md)

### Authorization

[authJWT](../README.md#authJWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blogPost**
> Blogs blogPost(blogRequest)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: authJWT
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('authJWT').apiKeyPrefix = 'Bearer';

final api = Openapi().getBlogsApi();
final BlogRequest blogRequest = ; // BlogRequest | Blog Create Request

try {
    final response = api.blogPost(blogRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BlogsApi->blogPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blogRequest** | [**BlogRequest**](BlogRequest.md)| Blog Create Request | 

### Return type

[**Blogs**](Blogs.md)

### Authorization

[authJWT](../README.md#authJWT)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

