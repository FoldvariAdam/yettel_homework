// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_highway_info200_response_payload_vehicle_categories_inner_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName
    _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerNameFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName',
          json,
          ($checkedConvert) {
            final val =
                GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName(
              hu: $checkedConvert('hu', (v) => v as String?),
              en: $checkedConvert('en', (v) => v as String?),
            );
            return val;
          },
        );

Map<String,
    dynamic> _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerNameToJson(
        GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName instance) =>
    <String, dynamic>{
      if (instance.hu case final value?) 'hu': value,
      if (instance.en case final value?) 'en': value,
    };
