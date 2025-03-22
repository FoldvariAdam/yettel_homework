import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';

extension VehicleCategoryMapper on List<GetHighwayInfo200ResponsePayloadVehicleCategoriesInner>? {
  List<VehicleCategory> toVehicleCategory() {
    if (this == null) {
      return [];
    }

    return this!.map((vc) {
      return VehicleCategory(
        category: vc.category ?? '',
        vignetteCategory: vc.vignetteCategory ?? '',
      );
    }).toList();
  }
}