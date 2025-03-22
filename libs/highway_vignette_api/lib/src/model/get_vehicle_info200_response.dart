//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:highway_vignette_api/src/model/get_vehicle_info200_response_country.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_vehicle_info200_response.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetVehicleInfo200Response {
  /// Returns a new [GetVehicleInfo200Response] instance.
  GetVehicleInfo200Response({

     this.statusCode,

     this.internationalRegistrationCode,

     this.type,

     this.name,

     this.plate,

     this.country,

     this.vignetteType,
  });

  @JsonKey(
    
    name: r'statusCode',
    required: false,
    includeIfNull: false
  )


  String? statusCode;



  @JsonKey(
    
    name: r'internationalRegistrationCode',
    required: false,
    includeIfNull: false
  )


  String? internationalRegistrationCode;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  String? type;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  String? name;



  @JsonKey(
    
    name: r'plate',
    required: false,
    includeIfNull: false
  )


  String? plate;



  @JsonKey(
    
    name: r'country',
    required: false,
    includeIfNull: false
  )


  GetVehicleInfo200ResponseCountry? country;



  @JsonKey(
    
    name: r'vignetteType',
    required: false,
    includeIfNull: false
  )


  String? vignetteType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetVehicleInfo200Response &&
      other.statusCode == statusCode &&
      other.internationalRegistrationCode == internationalRegistrationCode &&
      other.type == type &&
      other.name == name &&
      other.plate == plate &&
      other.country == country &&
      other.vignetteType == vignetteType;

    @override
    int get hashCode =>
        statusCode.hashCode +
        internationalRegistrationCode.hashCode +
        type.hashCode +
        name.hashCode +
        plate.hashCode +
        country.hashCode +
        vignetteType.hashCode;

  factory GetVehicleInfo200Response.fromJson(Map<String, dynamic> json) => _$GetVehicleInfo200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetVehicleInfo200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

