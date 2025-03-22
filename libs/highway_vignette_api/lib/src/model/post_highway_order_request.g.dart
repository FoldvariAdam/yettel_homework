// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_highway_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostHighwayOrderRequest _$PostHighwayOrderRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PostHighwayOrderRequest',
      json,
      ($checkedConvert) {
        final val = PostHighwayOrderRequest(
          highwayOrders: $checkedConvert(
              'highwayOrders',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      PostHighwayOrderRequestHighwayOrdersInner.fromJson(
                          e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$PostHighwayOrderRequestToJson(
        PostHighwayOrderRequest instance) =>
    <String, dynamic>{
      if (instance.highwayOrders?.map((e) => e.toJson()).toList()
          case final value?)
        'highwayOrders': value,
    };
