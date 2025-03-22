// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_highway_info200_response_payload_counties_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHighwayInfo200ResponsePayloadCountiesInner
    _$GetHighwayInfo200ResponsePayloadCountiesInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetHighwayInfo200ResponsePayloadCountiesInner',
          json,
          ($checkedConvert) {
            final val = GetHighwayInfo200ResponsePayloadCountiesInner(
              id: $checkedConvert('id', (v) => v as String?),
              name: $checkedConvert('name', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$GetHighwayInfo200ResponsePayloadCountiesInnerToJson(
        GetHighwayInfo200ResponsePayloadCountiesInner instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
    };
