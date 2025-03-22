//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_highway_order_request_highway_orders_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostHighwayOrderRequestHighwayOrdersInner {
  /// Returns a new [PostHighwayOrderRequestHighwayOrdersInner] instance.
  PostHighwayOrderRequestHighwayOrdersInner({

     this.type,

     this.category,

     this.cost,
  });

  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  String? type;



  @JsonKey(
    
    name: r'category',
    required: false,
    includeIfNull: false
  )


  String? category;



  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false
  )


  double? cost;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostHighwayOrderRequestHighwayOrdersInner &&
      other.type == type &&
      other.category == category &&
      other.cost == cost;

    @override
    int get hashCode =>
        type.hashCode +
        category.hashCode +
        cost.hashCode;

  factory PostHighwayOrderRequestHighwayOrdersInner.fromJson(Map<String, dynamic> json) => _$PostHighwayOrderRequestHighwayOrdersInnerFromJson(json);

  Map<String, dynamic> toJson() => _$PostHighwayOrderRequestHighwayOrdersInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

