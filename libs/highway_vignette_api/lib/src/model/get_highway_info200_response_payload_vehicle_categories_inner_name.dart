//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_highway_info200_response_payload_vehicle_categories_inner_name.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName {
  /// Returns a new [GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName] instance.
  GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName({

     this.hu,

     this.en,
  });

  @JsonKey(
    
    name: r'hu',
    required: false,
    includeIfNull: false
  )


  String? hu;



  @JsonKey(
    
    name: r'en',
    required: false,
    includeIfNull: false
  )


  String? en;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName &&
      other.hu == hu &&
      other.en == en;

    @override
    int get hashCode =>
        hu.hashCode +
        en.hashCode;

  factory GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName.fromJson(Map<String, dynamic> json) => _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerNameFromJson(json);

  Map<String, dynamic> toJson() => _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerNameToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

