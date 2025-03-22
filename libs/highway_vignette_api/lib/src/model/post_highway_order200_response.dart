//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:highway_vignette_api/src/model/post_highway_order_request_highway_orders_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_highway_order200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostHighwayOrder200Response {
  /// Returns a new [PostHighwayOrder200Response] instance.
  PostHighwayOrder200Response({

     this.statusCode,

     this.receivedOrders,
  });

  @JsonKey(
    
    name: r'statusCode',
    required: false,
    includeIfNull: false
  )


  String? statusCode;



  @JsonKey(
    
    name: r'receivedOrders',
    required: false,
    includeIfNull: false
  )


  List<PostHighwayOrderRequestHighwayOrdersInner>? receivedOrders;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostHighwayOrder200Response &&
      other.statusCode == statusCode &&
      other.receivedOrders == receivedOrders;

    @override
    int get hashCode =>
        statusCode.hashCode +
        receivedOrders.hashCode;

  factory PostHighwayOrder200Response.fromJson(Map<String, dynamic> json) => _$PostHighwayOrder200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostHighwayOrder200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

