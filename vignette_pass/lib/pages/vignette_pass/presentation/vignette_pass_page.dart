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

  HighwayVignette? _selectedVignette;

  final _vignettePriority = {'WEEK': 0, 'MONTH': 1, 'DAY': 2};

  @override
  Widget build(BuildContext context) {
    final navigationService = NavigationService.of(context);

    return BlocProvider(
      create: (context) => GetIt.instance.get<VignettePassBloc>()..add(VignettePassGetEvent()),
      child: BlocBuilder<VignettePassBloc, VignettePassState>(
        builder: (context, state) {
          if (state is VignettePassLoadedState) {
            final vehicleInfo = state.vehicleInfo;
            final highwayInfo = state.highwayInfo;
            final vignettesWithoutYear = highwayInfo.vignettesWithoutYear;

            final sortedVignettes = List<HighwayVignette>.from(vignettesWithoutYear)..sort((a, b) {
              final aType = a.vignetteTypes.firstWhere(_vignettePriority.containsKey, orElse: () => '');
              final bType = b.vignetteTypes.firstWhere(_vignettePriority.containsKey, orElse: () => '');
              final aPriority = _vignettePriority[aType] ?? 999;
              final bPriority = _vignettePriority[bType] ?? 999;
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
                      title: Text(vehicleInfo.plate, style: _applicationConfig.highlightedTextStyle),
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

                        final rawType = vignette.vignetteTypes.isNotEmpty ? vignette.vignetteTypes.first : '';

                        final title = _formatVignetteTitle(rawType);

                        final price = '${vignette.sum.toInt().toString()} Ft';

                        return _buildRadioTile(value: vignette, title: title, price: price);
                      },
                    ),
                  ),
                  SizedBox(height: _applicationConfig.spacing3),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _applicationConfig.primaryButtonColor,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed:
                          () => navigationService.goToPurchaseConfirmationPage(
                            selectedVignettes: [
                              SelectableVignette(
                                name: _formatVignetteTitle(_selectedVignette!.vignetteTypes.first),
                                price: _selectedVignette!.sum,
                              ),
                            ],
                          ),
                      child: Text('Vásárlás', style: _applicationConfig.heading4S.copyWith(color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: _applicationConfig.spacing3),
                  VignetteCard(
                    child: ListTile(
                      title: Text('Éves vármegyei matricák', style: _applicationConfig.heading5L),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap:
                          () => NavigationService.of(context).goToAnnualCountyPage(
                            vehicleInfo: state.vehicleInfo,
                            counties: highwayInfo.counties,
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

  Widget _buildRadioTile({required HighwayVignette value, required String title, required String price}) {
    return RadioListTile<HighwayVignette>(
      value: value,
      groupValue: _selectedVignette,
      onChanged: (HighwayVignette? newValue) {
        setState(() {
          _selectedVignette = newValue!;
        });
      },
      title: Text(title, style: _applicationConfig.highlightedTextStyle),
      subtitle: Text(price, style: _applicationConfig.heading5L),
      activeColor: _applicationConfig.mainColor,
    );
  }

  String _formatVignetteTitle(String vignetteType) {
    switch (vignetteType) {
      case 'DAY':
        return 'D1 - napi (1 napos)';
      case 'WEEK':
        return 'D1 - heti (10 napos)';
      case 'MONTH':
        return 'D1 - havi';
      case 'YEAR':
        return 'D1 - éves';
      default:
        return 'D1 - $vignetteType';
    }
  }
}
