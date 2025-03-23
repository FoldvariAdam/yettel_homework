import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';

class PurchaseConfirmationInteractor {
  final VignetteApi vignetteApi;

  PurchaseConfirmationInteractor({required this.vignetteApi});

  Future<void> postHighWayOrder(List<FlattenedVignette> selectedVignettes) async {
    final orders =
        selectedVignettes.map((v) {
          return PostHighwayOrderRequestHighwayOrdersInner(
            type: v.type,
            category: v.vehicleCategory,
            cost: v.sum,
          );
        }).toList();

    final request = PostHighwayOrderRequest(highwayOrders: orders);

    await vignetteApi.postHighwayOrder(postHighwayOrderRequest: request);
  }
}
