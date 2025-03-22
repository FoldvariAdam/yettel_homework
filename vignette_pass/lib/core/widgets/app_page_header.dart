import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class AppPageHeader extends StatelessWidget {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  final Widget child;

  AppPageHeader({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: _applicationConfig.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: _applicationConfig.headerBorderRadius,
              bottomRight: _applicationConfig.headerBorderRadius,
            ),
          ),
          padding: EdgeInsets.only(
            top: _applicationConfig.spacing3,
            right: _applicationConfig.spacing1,
            left: _applicationConfig.spacing1,
          ),
          child: SafeArea(
            bottom: false,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: _applicationConfig.mainColor),
                  onPressed: NavigationService.of(context).goBack,
                ),
                const SizedBox(width: 4),
                Text('E-matrica', style: _applicationConfig.heading5L),
              ],
            ),
          ),
        ),

        Expanded(child: child),
      ],
    );
  }
}
