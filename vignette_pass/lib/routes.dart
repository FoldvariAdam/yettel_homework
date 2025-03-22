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
            builder: (context, state) => const VignettePassPage(),
          ),
          GoRoute(
            name: NavigationRoutes.annualCounty,
            path: '/${NavigationRoutes.annualCounty}',
            builder: (context, state) {
              final extras = state.extra as Map<String, Object?>;
              final vehicleInfo = extras['vehicleInfo'] as VehicleInfo;
              final counties = extras['counties'] as List<County>;
              final vignettes = extras['vignettes'] as List<HighwayVignette>;

              return AnnualCountyPassPage(vehicleInfo: vehicleInfo, counties: counties, vignettes: vignettes);
            },
          ),
          GoRoute(
            name: NavigationRoutes.purchaseConfirmation,
            path: '/${NavigationRoutes.purchaseConfirmation}',
            builder: (context, state) => const PurchaseConfirmationPage(),
          ),
          GoRoute(
            name: NavigationRoutes.paymentSuccess,
            path: '/${NavigationRoutes.paymentSuccess}',
            builder: (context, state) => const PaymentSuccessPage(),
          ),
        ],
      ),
    ],
  );

  return _router!;
}
