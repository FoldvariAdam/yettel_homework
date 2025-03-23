import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';

class VignettePassInteractor {
  final VignetteApi vignetteApi;

  VignettePassInteractor({required this.vignetteApi});

  Future<VehicleInfo> getVehicleInfo() async {
    final vehicleInfo = await vignetteApi.getVehicleInfo();

    return vehicleInfo.data?.toCar() ?? const VehicleInfo(name: '', plate: '');
  }

  Future<HighwayInfo> getHighwayInfo() async {
    final response = await vignetteApi.getHighwayInfo();
    final payload = response.data?.payload;

    final vehicleCategories = payload?.vehicleCategories ?? [];
    final highwayVignettes = payload?.highwayVignettes ?? [];
    final counties = payload?.counties ?? [];

    final flattened = highwayVignettes.toFlattened(
      vehicleCategories: vehicleCategories,
      counties: counties,
    );

    final withYear = flattened.where((v) => v.type.startsWith(IDs.county)).toList();

    final withoutYear = flattened.where((v) => !v.type.startsWith(IDs.county)).toList();

    return HighwayInfo(vignettesWithYear: withYear, vignettesWithoutYear: withoutYear);
  }
}
