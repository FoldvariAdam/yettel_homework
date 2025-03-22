import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class PurchaseConfirmationPage extends StatelessWidget {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  final List<SelectableVignette> selectedVignettes;

  PurchaseConfirmationPage({required this.selectedVignettes, super.key});

  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService.of(context);

    final int totalPrice = selectedVignettes.fold<int>(Fees.systemFee, (sum, county) => sum + county.price.toInt());

    selectedVignettes.add(SelectableVignette(name: 'Rendszerhasználati díj', price: Fees.systemFee.toDouble()));

    return Padding(
      padding: EdgeInsets.all(_applicationConfig.spacing2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Vásárlás megerősítése', style: _applicationConfig.heading4S),
          SizedBox(height: _applicationConfig.spacing1),
          _buildDetailRow(title: 'Rendszám', value: 'ABC 123'),
          _buildDetailRow(title: 'Matrica típusa', value: 'Éves vármegyei'),
          SizedBox(height: _applicationConfig.spacing1),
          Expanded(
            child: ListView.builder(
              itemCount: selectedVignettes.length,
              itemBuilder: (context, index) {
                final vignette = selectedVignettes[index];
                return _buildVignetteRow(county: vignette.name, price: vignette.price.toInt());
              },
            ),
          ),
          SizedBox(height: _applicationConfig.spacing3),
          Text('Fizetendő összeg', style: _applicationConfig.heading7S),
          Text('$totalPrice Ft', style: _applicationConfig.heading2S),
          SizedBox(height: _applicationConfig.spacing3),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: navigationService.goToPaymentSuccessPage,
              child: const Text('Tovább'),
            ),
          ),
          SizedBox(height: _applicationConfig.spacing1),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16)),
              onPressed: navigationService.goBack,
              child: const Text('Mégsem'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: _applicationConfig.bodyTextStyle),
          Text(value, style: _applicationConfig.bodyTextStyle),
        ],
      ),
    );
  }

  Widget _buildVignetteRow({required String county, required int price}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(county, style: _applicationConfig.heading5L),
          Text('$price Ft', style: _applicationConfig.bodyTextStyle),
        ],
      ),
    );
  }
}
