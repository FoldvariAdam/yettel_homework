// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vehicle_info200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetVehicleInfo200Response _$GetVehicleInfo200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetVehicleInfo200Response',
      json,
      ($checkedConvert) {
        final val = GetVehicleInfo200Response(
          statusCode: $checkedConvert('statusCode', (v) => v as String?),
          internationalRegistrationCode: $checkedConvert(
              'internationalRegistrationCode', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          plate: $checkedConvert('plate', (v) => v as String?),
          country: $checkedConvert(
              'country',
              (v) => v == null
                  ? null
                  : GetVehicleInfo200ResponseCountry.fromJson(
                      v as Map<String, dynamic>)),
          vignetteType: $checkedConvert('vignetteType', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetVehicleInfo200ResponseToJson(
        GetVehicleInfo200Response instance) =>
    <String, dynamic>{
      if (instance.statusCode case final value?) 'statusCode': value,
      if (instance.internationalRegistrationCode case final value?)
        'internationalRegistrationCode': value,
      if (instance.type case final value?) 'type': value,
      if (instance.name case final value?) 'name': value,
      if (instance.plate case final value?) 'plate': value,
      if (instance.country?.toJson() case final value?) 'country': value,
      if (instance.vignetteType case final value?) 'vignetteType': value,
    };
