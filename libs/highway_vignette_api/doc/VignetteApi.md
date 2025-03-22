# highway_vignette_api.api.VignetteApi

## Load the API package
```dart
import 'package:highway_vignette_api/api.dart';
```

All URIs are relative to *http://0.0.0.0:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHighwayInfo**](VignetteApi.md#gethighwayinfo) | **GET** /v1/highway/info | Retrieve highway vignette information
[**getVehicleInfo**](VignetteApi.md#getvehicleinfo) | **GET** /v1/highway/vehicle | Retrieve vehicle information
[**postHighwayOrder**](VignetteApi.md#posthighwayorder) | **POST** /v1/highway/order | Place an order for highway vignettes


# **getHighwayInfo**
> GetHighwayInfo200Response getHighwayInfo()

Retrieve highway vignette information

### Example
```dart
import 'package:highway_vignette_api/api.dart';

final api = HighwayVignetteApi().getVignetteApi();

try {
    final response = api.getHighwayInfo();
    print(response);
} catch on DioException (e) {
    print('Exception when calling VignetteApi->getHighwayInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetHighwayInfo200Response**](GetHighwayInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVehicleInfo**
> GetVehicleInfo200Response getVehicleInfo()

Retrieve vehicle information

### Example
```dart
import 'package:highway_vignette_api/api.dart';

final api = HighwayVignetteApi().getVignetteApi();

try {
    final response = api.getVehicleInfo();
    print(response);
} catch on DioException (e) {
    print('Exception when calling VignetteApi->getVehicleInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetVehicleInfo200Response**](GetVehicleInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postHighwayOrder**
> PostHighwayOrder200Response postHighwayOrder(postHighwayOrderRequest)

Place an order for highway vignettes

### Example
```dart
import 'package:highway_vignette_api/api.dart';

final api = HighwayVignetteApi().getVignetteApi();
final PostHighwayOrderRequest postHighwayOrderRequest = ; // PostHighwayOrderRequest | 

try {
    final response = api.postHighwayOrder(postHighwayOrderRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VignetteApi->postHighwayOrder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postHighwayOrderRequest** | [**PostHighwayOrderRequest**](PostHighwayOrderRequest.md)|  | 

### Return type

[**PostHighwayOrder200Response**](PostHighwayOrder200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

