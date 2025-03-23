import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class AppErrorDisplay extends StatelessWidget {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  final Object error;
  final VoidCallback? onRetry;

  AppErrorDisplay({super.key, required this.error, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(_applicationConfig.spacing3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, color: Colors.red, size: 48),
            SizedBox(height: _applicationConfig.spacing2),
            Text('Hiba történt:', style: _applicationConfig.heading5L),
            SizedBox(height: _applicationConfig.spacing0),
            Text(
              error.toString(),
              style: _applicationConfig.highlightedTextStyle.copyWith(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              SizedBox(height: _applicationConfig.spacing3),
              AppButton.primary(text: 'Újra próbálom', onPressed: onRetry),
            ],
          ],
        ),
      ),
    );
  }
}
