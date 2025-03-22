import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';

class PurchaseConfirmationInteractor {
  final VignetteApi vignetteApi;
  final VehicleCategoryCache vehicleCategoryCache;

  PurchaseConfirmationInteractor({required this.vignetteApi, required this.vehicleCategoryCache});

  Future<void> postHighWayOrder() async {
    //await vignetteApi.postHighwayOrder(postHighwayOrderRequest: postHighwayOrderRequest);
  }


}