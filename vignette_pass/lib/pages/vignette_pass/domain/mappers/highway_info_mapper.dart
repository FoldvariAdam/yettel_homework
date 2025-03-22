import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';

extension HighwayInfoMapper on GetHighwayInfo200Response? {
  HighwayInfo toHighwayInfo() {
    final rawVignettes = this?.payload?.highwayVignettes ?? [];

    final vignettesWithYear = rawVignettes.where((v) =>
    v.vignetteType?.any((type) => type.contains('YEAR')) ?? false
    ).map((v) => HighwayVignette(
      vignetteTypes: List<String>.from(v.vignetteType ?? []),
      vehicleCategory: v.vehicleCategory ?? '',
      sum: v.sum?.toDouble() ?? 0.0,
    )).toList();

    final vignettesWithoutYear = rawVignettes.where((v) =>
    v.vignetteType?.every((type) => !type.contains('YEAR')) ?? true
    ).map((v) => HighwayVignette(
      vignetteTypes: List<String>.from(v.vignetteType ?? []),
      vehicleCategory: v.vehicleCategory ?? '',
      sum: v.sum?.toDouble() ?? 0.0,
    )).toList();

    final counties = this?.payload?.counties?.map((c) => County(
      id: c.id ?? '',
      name: c.name ?? '',
    )).toList() ?? [];

    return HighwayInfo(
      vignettesWithYear: vignettesWithYear,
      vignettesWithoutYear: vignettesWithoutYear,
      counties: counties,
    );
  }
}
