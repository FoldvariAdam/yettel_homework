// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_highway_info200_response_payload_highway_vignettes_inner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetHighwayInfo200ResponsePayloadHighwayVignettesInner
    _$GetHighwayInfo200ResponsePayloadHighwayVignettesInnerFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'GetHighwayInfo200ResponsePayloadHighwayVignettesInner',
          json,
          ($checkedConvert) {
            final val = GetHighwayInfo200ResponsePayloadHighwayVignettesInner(
              vignetteType: $checkedConvert(
                  'vignetteType',
                  (v) =>
                      (v as List<dynamic>?)?.map((e) => e as String).toList()),
              vehicleCategory:
                  $checkedConvert('vehicleCategory', (v) => v as String?),
              cost: $checkedConvert('cost', (v) => (v as num?)?.toDouble()),
              trxFee: $checkedConvert('trxFee', (v) => (v as num?)?.toDouble()),
              sum: $checkedConvert('sum', (v) => (v as num?)?.toDouble()),
            );
            return val;
          },
        );

Map<String, dynamic>
    _$GetHighwayInfo200ResponsePayloadHighwayVignettesInnerToJson(
            GetHighwayInfo200ResponsePayloadHighwayVignettesInner instance) =>
        <String, dynamic>{
          if (instance.vignetteType case final value?) 'vignetteType': value,
          if (instance.vehicleCategory case final value?)
            'vehicleCategory': value,
          if (instance.cost case final value?) 'cost': value,
          if (instance.trxFee case final value?) 'trxFee': value,
          if (instance.sum case final value?) 'sum': value,
        };
