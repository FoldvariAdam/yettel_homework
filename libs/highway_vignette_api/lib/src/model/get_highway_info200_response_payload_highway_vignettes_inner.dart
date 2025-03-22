//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'get_highway_info200_response_payload_highway_vignettes_inner.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetHighwayInfo200ResponsePayloadHighwayVignettesInner {
  /// Returns a new [GetHighwayInfo200ResponsePayloadHighwayVignettesInner] instance.
  GetHighwayInfo200ResponsePayloadHighwayVignettesInner({

     this.vignetteType,

     this.vehicleCategory,

     this.cost,

     this.trxFee,

     this.sum,
  });

  @JsonKey(
    
    name: r'vignetteType',
    required: false,
    includeIfNull: false
  )


  List<String>? vignetteType;



  @JsonKey(
    
    name: r'vehicleCategory',
    required: false,
    includeIfNull: false
  )


  String? vehicleCategory;



  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false
  )


  double? cost;



  @JsonKey(
    
    name: r'trxFee',
    required: false,
    includeIfNull: false
  )


  double? trxFee;



  @JsonKey(
    
    name: r'sum',
    required: false,
    includeIfNull: false
  )


  double? sum;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetHighwayInfo200ResponsePayloadHighwayVignettesInner &&
      other.vignetteType == vignetteType &&
      other.vehicleCategory == vehicleCategory &&
      other.cost == cost &&
      other.trxFee == trxFee &&
      other.sum == sum;

    @override
    int get hashCode =>
        vignetteType.hashCode +
        vehicleCategory.hashCode +
        cost.hashCode +
        trxFee.hashCode +
        sum.hashCode;

  factory GetHighwayInfo200ResponsePayloadHighwayVignettesInner.fromJson(Map<String, dynamic> json) => _$GetHighwayInfo200ResponsePayloadHighwayVignettesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetHighwayInfo200ResponsePayloadHighwayVignettesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

