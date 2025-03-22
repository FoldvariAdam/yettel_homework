//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'post_highway_order400_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostHighwayOrder400Response {
  /// Returns a new [PostHighwayOrder400Response] instance.
  PostHighwayOrder400Response({

     this.statusCode,

     this.message,
  });

  @JsonKey(
    
    name: r'statusCode',
    required: false,
    includeIfNull: false
  )


  String? statusCode;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  String? message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PostHighwayOrder400Response &&
      other.statusCode == statusCode &&
      other.message == message;

    @override
    int get hashCode =>
        statusCode.hashCode +
        message.hashCode;

  factory PostHighwayOrder400Response.fromJson(Map<String, dynamic> json) => _$PostHighwayOrder400ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostHighwayOrder400ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

