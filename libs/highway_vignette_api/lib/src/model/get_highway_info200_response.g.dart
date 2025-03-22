// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_highway_info200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHighwayInfo200Response _$GetHighwayInfo200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'GetHighwayInfo200Response',
      json,
      ($checkedConvert) {
        final val = GetHighwayInfo200Response(
          requestId: $checkedConvert('requestId', (v) => v as num?),
          statusCode: $checkedConvert('statusCode', (v) => v as String?),
          payload: $checkedConvert(
              'payload',
              (v) => v == null
                  ? null
                  : GetHighwayInfo200ResponsePayload.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$GetHighwayInfo200ResponseToJson(
        GetHighwayInfo200Response instance) =>
    <String, dynamic>{
      if (instance.requestId case final value?) 'requestId': value,
      if (instance.statusCode case final value?) 'statusCode': value,
      if (instance.payload?.toJson() case final value?) 'payload': value,
    };
