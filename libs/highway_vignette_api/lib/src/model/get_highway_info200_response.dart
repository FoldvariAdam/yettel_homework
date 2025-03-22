//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_highway_info200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetHighwayInfo200Response {
  /// Returns a new [GetHighwayInfo200Response] instance.
  GetHighwayInfo200Response({

     this.requestId,

     this.statusCode,

     this.payload,
  });

  @JsonKey(
    
    name: r'requestId',
    required: false,
    includeIfNull: false
  )


  num? requestId;



  @JsonKey(
    
    name: r'statusCode',
    required: false,
    includeIfNull: false
  )


  String? statusCode;



  @JsonKey(
    
    name: r'payload',
    required: false,
    includeIfNull: false
  )


  GetHighwayInfo200ResponsePayload? payload;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetHighwayInfo200Response &&
      other.requestId == requestId &&
      other.statusCode == statusCode &&
      other.payload == payload;

    @override
    int get hashCode =>
        requestId.hashCode +
        statusCode.hashCode +
        payload.hashCode;

  factory GetHighwayInfo200Response.fromJson(Map<String, dynamic> json) => _$GetHighwayInfo200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetHighwayInfo200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

