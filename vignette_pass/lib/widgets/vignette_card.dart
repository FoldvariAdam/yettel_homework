import 'package:flutter/material.dart';
import 'package:vignette_pass/index.dart';
import 'package:get_it/get_it.dart';

class VignetteCard extends StatelessWidget {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  final Widget child;

  VignetteCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _applicationConfig.cardColor,
      shape: RoundedRectangleBorder(borderRadius: _applicationConfig.borderRadius),
      child: child,
    );
  }
}
