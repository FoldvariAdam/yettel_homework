import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';

extension VehicleInfoMapper on GetVehicleInfo200Response {
  VehicleInfo toCar() {
    return VehicleInfo(name: name ?? '', plate: plate ?? '');
  }
}
