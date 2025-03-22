// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_highway_order200_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostHighwayOrder200Response _$PostHighwayOrder200ResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostHighwayOrder200Response',
      json,
      ($checkedConvert) {
        final val = PostHighwayOrder200Response(
          statusCode: $checkedConvert('statusCode', (v) => v as String?),
          receivedOrders: $checkedConvert(
              'receivedOrders',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      PostHighwayOrderRequestHighwayOrdersInner.fromJson(
                          e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostHighwayOrder200ResponseToJson(
        PostHighwayOrder200Response instance) =>
    <String, dynamic>{
      if (instance.statusCode case final value?) 'statusCode': value,
      if (instance.receivedOrders?.map((e) => e.toJson()).toList()
          case final value?)
        'receivedOrders': value,
    };
