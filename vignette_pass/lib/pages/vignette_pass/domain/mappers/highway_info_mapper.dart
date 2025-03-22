import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';

extension FlattenVignettes on List<GetHighwayInfo200ResponsePayloadHighwayVignettesInner>? {
  List<FlattenedVignette> toFlattened({
    required List<GetHighwayInfo200ResponsePayloadVehicleCategoriesInner>? vehicleCategories,
    required List<GetHighwayInfo200ResponsePayloadCountiesInner>? counties,
  }) {
    if (this == null || vehicleCategories == null) {
      return [];
    }

    final countyNameMap = Map.fromEntries(
      (counties ?? [])
          .where((c) => c.id != null && c.name != null)
          .map((c) => MapEntry(c.id!, c.name!)),
    );

    return this!.expand((vignette) {
      final vehicleCategory = vignette.vehicleCategory ?? '';
      final sum = vignette.sum ?? 0.0;

      final vignetteCategory =
          vehicleCategories
              .firstWhere(
                (vc) => vc.category == vehicleCategory,
                orElse: GetHighwayInfo200ResponsePayloadVehicleCategoriesInner.new,
              )
              .vignetteCategory ??
          '';

      return vignette.vignetteType?.map((type) {
            return FlattenedVignette(
              type: type,
              vehicleCategory: vehicleCategory,
              category: vignetteCategory,
              sum: sum,
              name: countyNameMap[type] ?? '',
            );
          }) ??
          <FlattenedVignette>[];
    }).toList();
  }
}
