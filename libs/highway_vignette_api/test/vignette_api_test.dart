import 'package:test/test.dart';
import 'package:highway_vignette_api/highway_vignette_api.dart';


/// tests for VignetteApi
void main() {
  final instance = HighwayVignetteApi().getVignetteApi();

  group(VignetteApi, () {
    // Retrieve highway vignette information
    //
    //Future<GetHighwayInfo200Response> getHighwayInfo() async
    test('test getHighwayInfo', () async {
      // TODO
    });

    // Retrieve vehicle information
    //
    //Future<GetVehicleInfo200Response> getVehicleInfo() async
    test('test getVehicleInfo', () async {
      // TODO
    });

    // Place an order for highway vignettes
    //
    //Future<PostHighwayOrder200Response> postHighwayOrder(PostHighwayOrderRequest postHighwayOrderRequest) async
    test('test postHighwayOrder', () async {
      // TODO
    });

  });
}
