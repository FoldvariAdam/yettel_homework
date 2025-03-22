// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_highway_order400_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostHighwayOrder400Response _$PostHighwayOrder400ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostHighwayOrder400Response',
      json,
      ($checkedConvert) {
        final val = PostHighwayOrder400Response(
          statusCode: $checkedConvert('statusCode', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostHighwayOrder400ResponseToJson(
        PostHighwayOrder400Response instance) =>
    <String, dynamic>{
      if (instance.statusCode case final value?) 'statusCode': value,
      if (instance.message case final value?) 'message': value,
    };
