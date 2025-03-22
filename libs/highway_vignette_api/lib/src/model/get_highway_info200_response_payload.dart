//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_highway_vignettes_inner.dart';
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_counties_inner.dart';
import 'package:highway_vignette_api/src/model/get_highway_info200_response_payload_vehicle_categories_inner.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_highway_info200_response_payload.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetHighwayInfo200ResponsePayload {
  /// Returns a new [GetHighwayInfo200ResponsePayload] instance.
  GetHighwayInfo200ResponsePayload({

     this.highwayVignettes,

     this.vehicleCategories,

     this.counties,
  });

  @JsonKey(
    
    name: r'highwayVignettes',
    required: false,
    includeIfNull: false
  )


  List<GetHighwayInfo200ResponsePayloadHighwayVignettesInner>? highwayVignettes;



  @JsonKey(
    
    name: r'vehicleCategories',
    required: false,
    includeIfNull: false
  )


  List<GetHighwayInfo200ResponsePayloadVehicleCategoriesInner>? vehicleCategories;



  @JsonKey(
    
    name: r'counties',
    required: false,
    includeIfNull: false
  )


  List<GetHighwayInfo200ResponsePayloadCountiesInner>? counties;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetHighwayInfo200ResponsePayload &&
      other.highwayVignettes == highwayVignettes &&
      other.vehicleCategories == vehicleCategories &&
      other.counties == counties;

    @override
    int get hashCode =>
        highwayVignettes.hashCode +
        vehicleCategories.hashCode +
        counties.hashCode;

  factory GetHighwayInfo200ResponsePayload.fromJson(Map<String, dynamic> json) => _$GetHighwayInfo200ResponsePayloadFromJson(json);

  Map<String, dynamic> toJson() => _$GetHighwayInfo200ResponsePayloadToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

