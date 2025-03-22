//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:highway_vignette_api/src/model/post_highway_order_request_highway_orders_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_highway_order_request.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostHighwayOrderRequest {
  /// Returns a new [PostHighwayOrderRequest] instance.
  PostHighwayOrderRequest({

     this.highwayOrders,
  });

  @JsonKey(
    
    name: r'highwayOrders',
    required: false,
    includeIfNull: false
  )


  List<PostHighwayOrderRequestHighwayOrdersInner>? highwayOrders;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostHighwayOrderRequest &&
      other.highwayOrders == highwayOrders;

    @override
    int get hashCode =>
        highwayOrders.hashCode;

  factory PostHighwayOrderRequest.fromJson(Map<String, dynamic> json) => _$PostHighwayOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostHighwayOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

