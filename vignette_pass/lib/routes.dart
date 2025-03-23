import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vignette_pass/index.dart';

GoRouter? _router;
final _appShellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'AppShellRouteNavigatorKey');

GoRouter createRouterConfig() {
  _router ??= GoRouter(
    initialLocation: '/${NavigationRoutes.vignette}',
    routes: [
      ShellRoute(
        navigatorKey: _appShellNavigatorKey,
        builder: (context, state, widget) => AppShellPage(child: widget),
        routes: [
          GoRoute(
            name: NavigationRoutes.vignette,
            path: '/${NavigationRoutes.vignette}',
            builder: (context, state) => AppPageHeader(child: const VignettePassPage()),
          ),
          GoRoute(
            name: NavigationRoutes.annualCounty,
            path: '/${NavigationRoutes.annualCounty}',
            builder: (context, state) {
              final extras = state.extra as Map<String, Object?>;
              final vehicleInfo = extras['vehicleInfo'] as VehicleInfo;
              final vignettes = extras['vignettes'] as List<FlattenedVignette>;

              return AppPageHeader(
                child: AnnualCountyPassPage(vehicleInfo: vehicleInfo, vignettes: vignettes),
              );
            },
          ),
          GoRoute(
            name: NavigationRoutes.purchaseConfirmation,
            path: '/${NavigationRoutes.purchaseConfirmation}',
            builder: (context, state) {
              final extras = state.extra as Map<String, Object?>;

              final selectedVignettes = extras['selectedVignettes'] as List<FlattenedVignette>;
              final vehicleInfo = extras['vehicleInfo'] as VehicleInfo;

              return AppPageHeader(
                child: PurchaseConfirmationPage(
                  selectedVignettes: selectedVignettes,
                  vehicleInfo: vehicleInfo,
                ),
              );
            },
          ),
          GoRoute(
            name: NavigationRoutes.paymentSuccess,
            path: '/${NavigationRoutes.paymentSuccess}',
            builder: (context, state) => PaymentSuccessPage(),
          ),
        ],
      ),
    ],
  );

  return _router!;
}
