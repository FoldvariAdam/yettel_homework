import 'package:highway_vignette_api/src/model/get_highway_info200_response.dart';
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload.dart';
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_counties_inner.dart';
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_highway_vignettes_inner.dart';
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_vehicle_categories_inner.dart';
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_vehicle_categories_inner_name.dart';
import 'package:highway_vignette_api/src/model/get_vehicle_info200_response.dart';
import 'package:highway_vignette_api/src/model/get_vehicle_info200_response_country.dart';
import 'package:highway_vignette_api/src/model/post_highway_order200_response.dart';
import 'package:highway_vignette_api/src/model/post_highway_order400_response.dart';
import 'package:highway_vignette_api/src/model/post_highway_order_request.dart';
import 'package:highway_vignette_api/src/model/post_highway_order_request_highway_orders_inner.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'GetHighwayInfo200Response':
          return GetHighwayInfo200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetHighwayInfo200ResponsePayload':
          return GetHighwayInfo200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetHighwayInfo200ResponsePayloadCountiesInner':
          return GetHighwayInfo200ResponsePayloadCountiesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetHighwayInfo200ResponsePayloadHighwayVignettesInner':
          return GetHighwayInfo200ResponsePayloadHighwayVignettesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetHighwayInfo200ResponsePayloadVehicleCategoriesInner':
          return GetHighwayInfo200ResponsePayloadVehicleCategoriesInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName':
          return GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetVehicleInfo200Response':
          return GetVehicleInfo200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetVehicleInfo200ResponseCountry':
          return GetVehicleInfo200ResponseCountry.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostHighwayOrder200Response':
          return PostHighwayOrder200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostHighwayOrder400Response':
          return PostHighwayOrder400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostHighwayOrderRequest':
          return PostHighwayOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PostHighwayOrderRequestHighwayOrdersInner':
          return PostHighwayOrderRequestHighwayOrdersInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return Map<dynamic, BaseType>.fromIterables(
              value.keys,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    } 
    throw Exception('Cannot deserialize');
  }