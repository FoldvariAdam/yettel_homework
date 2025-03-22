// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_highway_info200_response_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHighwayInfo200ResponsePayload _$GetHighwayInfo200ResponsePayloadFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetHighwayInfo200ResponsePayload',
      json,
      ($checkedConvert) {
        final val = GetHighwayInfo200ResponsePayload(
          highwayVignettes: $checkedConvert(
              'highwayVignettes',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      GetHighwayInfo200ResponsePayloadHighwayVignettesInner
                          .fromJson(e as Map<String, dynamic>))
                  .toList()),
          vehicleCategories: $checkedConvert(
              'vehicleCategories',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      GetHighwayInfo200ResponsePayloadVehicleCategoriesInner
                          .fromJson(e as Map<String, dynamic>))
                  .toList()),
          counties: $checkedConvert(
              'counties',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      GetHighwayInfo200ResponsePayloadCountiesInner.fromJson(
                          e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetHighwayInfo200ResponsePayloadToJson(
        GetHighwayInfo200ResponsePayload instance) =>
    <String, dynamic>{
      if (instance.highwayVignettes?.map((e) => e.toJson()).toList()
          case final value?)
        'highwayVignettes': value,
      if (instance.vehicleCategories?.map((e) => e.toJson()).toList()
          case final value?)
        'vehicleCategories': value,
      if (instance.counties?.map((e) => e.toJson()).toList() case final value?)
        'counties': value,
    };
