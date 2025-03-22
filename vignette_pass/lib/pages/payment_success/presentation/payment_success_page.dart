import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class PaymentSuccessPage extends StatelessWidget {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                'A matricákat sikeresen kifizetted!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: _applicationConfig.spacing3),
              // SvgPicture.asset(
              //   'assets/payment_success.svg',
              //   height: 200,
              // ),
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
    );
  }
}
