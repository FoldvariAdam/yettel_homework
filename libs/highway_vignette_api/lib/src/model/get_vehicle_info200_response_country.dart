//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_vehicle_info200_response_country.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetVehicleInfo200ResponseCountry {
  /// Returns a new [GetVehicleInfo200ResponseCountry] instance.
  GetVehicleInfo200ResponseCountry({

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
    bool operator ==(Object other) => identical(this, other) || other is GetVehicleInfo200ResponseCountry &&
      other.hu == hu &&
      other.en == en;

    @override
    int get hashCode =>
        hu.hashCode +
        en.hashCode;

  factory GetVehicleInfo200ResponseCountry.fromJson(Map<String, dynamic> json) => _$GetVehicleInfo200ResponseCountryFromJson(json);

  Map<String, dynamic> toJson() => _$GetVehicleInfo200ResponseCountryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

