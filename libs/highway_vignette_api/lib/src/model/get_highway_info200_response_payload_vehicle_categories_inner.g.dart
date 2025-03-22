// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_highway_info200_response_payload_vehicle_categories_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHighwayInfo200ResponsePayloadVehicleCategoriesInner
    _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetHighwayInfo200ResponsePayloadVehicleCategoriesInner',
          json,
          ($checkedConvert) {
            final val = GetHighwayInfo200ResponsePayloadVehicleCategoriesInner(
              category: $checkedConvert('category', (v) => v as String?),
              vignetteCategory:
                  $checkedConvert('vignetteCategory', (v) => v as String?),
              name: $checkedConvert(
                  'name',
                  (v) => v == null
                      ? null
                      : GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName
                          .fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerToJson(
            GetHighwayInfo200ResponsePayloadVehicleCategoriesInner instance) =>
        <String, dynamic>{
          if (instance.category case final value?) 'category': value,
          if (instance.vignetteCategory case final value?)
            'vignetteCategory': value,
          if (instance.name?.toJson() case final value?) 'name': value,
        };
