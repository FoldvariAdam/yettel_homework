import 'package:highway_vignette_api/highway_vignette_api.dart';
import 'package:vignette_pass/index.dart';
import 'package:get_it/get_it.dart';

void registerServices() {
  final services = GetIt.instance;

  services.registerSingleton<ApplicationConfig>(ApplicationConfig());
}

void registerBlocs() {
  final services = GetIt.instance;

  services.registerSingleton<VignettePassInteractor>(
    VignettePassInteractor(vignetteApi: services.get<VignetteApi>()),
  );

  services.registerFactory<VignettePassBloc>(
    () => VignettePassBloc(vignettePassInteractor: services.get<VignettePassInteractor>()),
  );

  services.registerSingleton<PurchaseConfirmationInteractor>(
    PurchaseConfirmationInteractor(vignetteApi: services.get<VignetteApi>()),
  );

  services.registerFactory<PurchaseConfirmationBloc>(
    () => PurchaseConfirmationBloc(
      purchaseConfirmationInteractor: services.get<PurchaseConfirmationInteractor>(),
    ),
  );
}

void registerApisBeforeRunApp() {
  final services = GetIt.instance;

  final vignetteApi =
      HighwayVignetteApi(basePathOverride: '').getVignetteApi();

  services.registerSingleton<VignetteApi>(vignetteApi);
}
