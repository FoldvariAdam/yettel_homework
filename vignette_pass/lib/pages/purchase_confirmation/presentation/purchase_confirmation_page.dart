import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class PurchaseConfirmationPage extends StatelessWidget {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  final List<FlattenedVignette> selectedVignettes;
  final VehicleInfo vehicleInfo;

  PurchaseConfirmationPage({required this.selectedVignettes, required this.vehicleInfo, super.key});

  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService.of(context);

    final int totalPrice = selectedVignettes.fold(Fees.systemFee, (sum, v) => sum + v.sum.toInt());

    return BlocProvider(
      create: (context) => GetIt.instance.get<PurchaseConfirmationBloc>(),
      child: BlocListener<PurchaseConfirmationBloc, PurchaseConfirmationState>(
        listener: (context, state) {
          if (state is PurchaseConfirmationSuccessfulState) {
            NavigationService.of(context).goToPaymentSuccessPage();
          }
        },
        child: Padding(
          padding: EdgeInsets.all(_applicationConfig.spacing2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Vásárlás megerősítése', style: _applicationConfig.heading4S),
              const Divider(),
              SizedBox(height: _applicationConfig.spacing0),
              _buildDetailRow(title: 'Rendszám', value: vehicleInfo.plate),
              _buildDetailRow(
                title: 'Matrica típusa',
                value:
                    selectedVignettes.length != 1 ? 'Éves vármegyei' : selectedVignettes.first.name,
              ),
              SizedBox(height: _applicationConfig.spacing0),
              const Divider(),
              SizedBox(height: _applicationConfig.spacing3),
              Expanded(
                child: ListView(
                  children: [
                    ...selectedVignettes.map((v) {
                      final name = v.name;
                      return _buildVignetteRow(county: name, price: v.sum.toInt());
                    }),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rendszerhasználati díj',
                            style: _applicationConfig.highlightedTextStyle,
                          ),
                          Text('${Fees.systemFee} Ft', style: _applicationConfig.bodyTextStyle),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: _applicationConfig.spacing3),
              Text('Fizetendő összeg', style: _applicationConfig.heading7S),
              Text('$totalPrice Ft', style: _applicationConfig.heading2S),
              SizedBox(height: _applicationConfig.spacing3),
              Builder(
                builder: (context) {
                  return AppButton.primary(
                    text: 'Tovább',
                    onPressed: () {
                      context.read<PurchaseConfirmationBloc>().add(
                        PurchaseConfirmationPostHighwayOrderEvent(
                          flattenedVignette: selectedVignettes,
                        ),
                      );
                    },
                  );
                },
              ),
              SizedBox(height: _applicationConfig.spacing1),
              AppButton.secondary(text: 'Mégsem', onPressed: navigationService.goBack),
            ],
          ),
        ),
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
