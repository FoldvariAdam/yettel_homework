import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class VignettePassPage extends StatefulWidget {
  const VignettePassPage({super.key});

  @override
  State<VignettePassPage> createState() => _VignettePassPageState();
}

class _VignettePassPageState extends State<VignettePassPage> {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  FlattenedVignette? _selectedVignette;

  final _vignettePriority = {'WEEK': 0, 'MONTH': 1, 'DAY': 2};

  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService.of(context);

    return BlocProvider(
      create:
          (context) =>
              GetIt.instance.get<VignettePassBloc>()..add(VignettePassGetVehicleHighwayInfoEvent()),
      child: BlocBuilder<VignettePassBloc, VignettePassState>(
        builder: (context, state) {
          if (state is VignettePassLoadedState) {
            final vehicleInfo = state.vehicleInfo;
            final highwayInfo = state.highwayInfo;
            final vignettesWithoutYear = highwayInfo.vignettesWithoutYear;

            final sortedVignettes = List<FlattenedVignette>.from(vignettesWithoutYear)
              ..sort((a, b) {
                final aPriority = _vignettePriority[a.type] ?? 999;
                final bPriority = _vignettePriority[b.type] ?? 999;
                return aPriority.compareTo(bPriority);
              });

            return Padding(
              padding: EdgeInsets.all(_applicationConfig.spacing2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VignetteCard(
                    child: ListTile(
                      leading: const Icon(Icons.directions_car),
                      title: Text(
                        vehicleInfo.plate,
                        style: _applicationConfig.highlightedTextStyle,
                      ),
                      subtitle: Text(vehicleInfo.name, style: _applicationConfig.bodyTextStyle),
                    ),
                  ),
                  SizedBox(height: _applicationConfig.spacing3),
                  Text('Országos matricák', style: _applicationConfig.heading5L),
                  VignetteCard(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: sortedVignettes.length,
                      itemBuilder: (context, index) {
                        final vignette = sortedVignettes[index];

                        final title = _formatVignetteTitle(vignette);
                        final price = '${vignette.sum.toInt()} Ft';

                        return _buildRadioTile(value: vignette, title: title, price: price);
                      },
                    ),
                  ),
                  SizedBox(height: _applicationConfig.spacing3),
                  AppButton.primary(
                    text: 'Vásárlás',
                    onPressed:
                        () => navigationService.goToPurchaseConfirmationPage(
                          selectedVignettes: [_selectedVignette!],
                        ),
                    disabled: _selectedVignette == null,
                  ),
                  SizedBox(height: _applicationConfig.spacing3),
                  VignetteCard(
                    child: ListTile(
                      title: Text('Éves vármegyei matricák', style: _applicationConfig.heading5L),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap:
                          () => NavigationService.of(context).goToAnnualCountyPage(
                            vehicleInfo: state.vehicleInfo,
                            vignettes: highwayInfo.vignettesWithYear,
                          ),
                    ),
                  ),
                ],
              ),
            );
          } else if (state is VignettePassLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }

          return Container();
        },
      ),
    );
  }

  Widget _buildRadioTile({
    required FlattenedVignette value,
    required String title,
    required String price,
  }) {
    return RadioListTile<FlattenedVignette>(
      value: value,
      groupValue: _selectedVignette,
      onChanged: (newValue) {
        setState(() {
          _selectedVignette = newValue!;
        });
      },
      title: Text(title, style: _applicationConfig.highlightedTextStyle),
      subtitle: Text(price, style: _applicationConfig.heading5L),
      activeColor: _applicationConfig.mainColor,
    );
  }

  String _formatVignetteTitle(FlattenedVignette vignette) {
    switch (vignette.type) {
      case 'DAY':
        return '${vignette.category} - napi (1 napos)';
      case 'WEEK':
        return '${vignette.category} - heti (10 napos)';
      case 'MONTH':
        return '${vignette.category} - havi';
      case 'YEAR':
        return '${vignette.category} - éves';
      default:
        return '${vignette.category} - ${vignette.type}';
    }
  }
}
