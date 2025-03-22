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
        builder: (context, state, widget) => AppShellPage(
          child: widget,
        ),
        routes: [
          GoRoute(
            name: NavigationRoutes.vignette,
            path: '/${NavigationRoutes.vignette}',
            builder: (context, state) => const VignettePassPage(),
          ),
          GoRoute(
            name: NavigationRoutes.annualCounty,
            path: '/${NavigationRoutes.annualCounty}',
            builder: (context, state) => const AnnualCountyPassPage(),
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
