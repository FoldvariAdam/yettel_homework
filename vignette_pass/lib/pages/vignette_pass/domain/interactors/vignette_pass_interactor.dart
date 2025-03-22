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
    final highWayInfo = await vignetteApi.getHighwayInfo();

    return highWayInfo.data.toHighwayInfo();
  }
}