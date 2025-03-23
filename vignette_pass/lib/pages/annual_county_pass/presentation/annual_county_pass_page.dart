import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class AnnualCountyPassPage extends StatefulWidget {
  final VehicleInfo vehicleInfo;
  final List<FlattenedVignette> vignettes;

  const AnnualCountyPassPage({
    required this.vehicleInfo,
    required this.vignettes,
    super.key,
  });

  @override
  _AnnualCountyPassPageState createState() => _AnnualCountyPassPageState();
}

class _AnnualCountyPassPageState extends State<AnnualCountyPassPage> {
  final ApplicationConfig _applicationConfig =
      GetIt.instance.get<ApplicationConfig>();

  late List<FlattenedVignette> _countyVignettes;

  @override
  void initState() {
    super.initState();

    _countyVignettes =
        widget.vignettes.map((v) => v.changeSelected(selected: false)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(_applicationConfig.spacing2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Éves vármegyei matricák', style: _applicationConfig.heading5L),
          SizedBox(height: _applicationConfig.spacing1),
          Center(
            child: SvgPicture.asset('assets/hungary_map.svg', height: 150),
          ),
          SizedBox(height: _applicationConfig.spacing1),
          Expanded(
            child: ListView.builder(
              itemCount: _countyVignettes.length,
              itemBuilder: (context, index) {
                final item = _countyVignettes[index];

                return CheckboxListTile(
                  title: Text(
                    item.name,
                    style: _applicationConfig.bodyTextStyle,
                  ),
                  subtitle: Text(
                    '${item.sum.toStringAsFixed(0)} Ft',
                    style: _applicationConfig.heading5L,
                  ),
                  value: item.selected,
                  activeColor: Colors.black,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _countyVignettes[index] = item.changeSelected(
                        selected: newValue ?? false,
                      );
                    });
                  },
                );
              },
            ),
          ),
          SizedBox(height: _applicationConfig.spacing1),
          Text('Fizetendő összeg', style: _applicationConfig.heading7S),
          Text(
            '${_getSelectedTotalPrice().toStringAsFixed(0)} Ft',
            style: _applicationConfig.heading2S,
          ),
          SizedBox(height: _applicationConfig.spacing3),
          AppButton.primary(
            text: 'Tovább',
            onPressed:
                () =>
                    NavigationService.of(context).goToPurchaseConfirmationPage(
                      vehicleInfo: widget.vehicleInfo,
                      selectedVignettes:
                          _countyVignettes
                              .where((county) => county.selected)
                              .toList(),
                    ),
          ),
        ],
      ),
    );
  }

  double _getSelectedTotalPrice() => _countyVignettes
      .where((c) => c.selected)
      .fold(0.0, (sum, c) => sum + c.sum);
}
