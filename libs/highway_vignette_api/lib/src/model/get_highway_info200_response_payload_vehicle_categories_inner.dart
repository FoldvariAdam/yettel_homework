//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_vehicle_categories_inner_name.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_highway_info200_response_payload_vehicle_categories_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetHighwayInfo200ResponsePayloadVehicleCategoriesInner {
  /// Returns a new [GetHighwayInfo200ResponsePayloadVehicleCategoriesInner] instance.
  GetHighwayInfo200ResponsePayloadVehicleCategoriesInner({

     this.category,

     this.vignetteCategory,

     this.name,
  });

  @JsonKey(
    
    name: r'category',
    required: false,
    includeIfNull: false
  )


  String? category;



  @JsonKey(
    
    name: r'vignetteCategory',
    required: false,
    includeIfNull: false
  )


  String? vignetteCategory;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerName? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetHighwayInfo200ResponsePayloadVehicleCategoriesInner &&
      other.category == category &&
      other.vignetteCategory == vignetteCategory &&
      other.name == name;

    @override
    int get hashCode =>
        category.hashCode +
        vignetteCategory.hashCode +
        name.hashCode;

  factory GetHighwayInfo200ResponsePayloadVehicleCategoriesInner.fromJson(Map<String, dynamic> json) => _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetHighwayInfo200ResponsePayloadVehicleCategoriesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

