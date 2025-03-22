//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_highway_info200_response_payload_counties_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetHighwayInfo200ResponsePayloadCountiesInner {
  /// Returns a new [GetHighwayInfo200ResponsePayloadCountiesInner] instance.
  GetHighwayInfo200ResponsePayloadCountiesInner({

     this.id,

     this.name,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false
  )


  String? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetHighwayInfo200ResponsePayloadCountiesInner &&
      other.id == id &&
      other.name == name;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode;

  factory GetHighwayInfo200ResponsePayloadCountiesInner.fromJson(Map<String, dynamic> json) => _$GetHighwayInfo200ResponsePayloadCountiesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetHighwayInfo200ResponsePayloadCountiesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

