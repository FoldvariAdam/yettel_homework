// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_vehicle_info200_response_country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetVehicleInfo200ResponseCountry _$GetVehicleInfo200ResponseCountryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetVehicleInfo200ResponseCountry',
      json,
      ($checkedConvert) {
        final val = GetVehicleInfo200ResponseCountry(
          hu: $checkedConvert('hu', (v) => v as String?),
          en: $checkedConvert('en', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetVehicleInfo200ResponseCountryToJson(
        GetVehicleInfo200ResponseCountry instance) =>
    <String, dynamic>{
      if (instance.hu case final value?) 'hu': value,
      if (instance.en case final value?) 'en': value,
    };
