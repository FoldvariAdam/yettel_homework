import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class PaymentSuccessPage extends StatelessWidget {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _applicationConfig.primary,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.all(_applicationConfig.spacing2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    'A matricákat sikeresen kifizetted!',
                    style: _applicationConfig.heading2S,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: _applicationConfig.spacing3),
                  const Spacer(),
                  AppButton.primary(
                    text: 'Rendben',
                    onPressed: NavigationService.of(context).goToVignettePage,
                  ),
                  SizedBox(height: _applicationConfig.spacing3),
                ],
              ),
            ),
          ),
          Image.asset('assets/success_confetti.png'),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Image.asset('assets/success.png'),
            ),
          ),
        ],
      ),
    );
  }
}
