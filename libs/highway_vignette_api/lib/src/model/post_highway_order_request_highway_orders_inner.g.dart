// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_highway_order_request_highway_orders_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostHighwayOrderRequestHighwayOrdersInner
    _$PostHighwayOrderRequestHighwayOrdersInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'PostHighwayOrderRequestHighwayOrdersInner',
          json,
          ($checkedConvert) {
            final val = PostHighwayOrderRequestHighwayOrdersInner(
              type: $checkedConvert('type', (v) => v as String?),
              category: $checkedConvert('category', (v) => v as String?),
              cost: $checkedConvert('cost', (v) => (v as num?)?.toDouble()),
            );
            return val;
          },
        );

Map<String, dynamic> _$PostHighwayOrderRequestHighwayOrdersInnerToJson(
        PostHighwayOrderRequestHighwayOrdersInner instance) =>
    <String, dynamic>{
      if (instance.type case final value?) 'type': value,
      if (instance.category case final value?) 'category': value,
      if (instance.cost case final value?) 'cost': value,
    };
