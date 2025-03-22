import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:vignette_pass/index.dart';

class AnnualCountyPassPage extends StatefulWidget {
  final VehicleInfo vehicleInfo;
  final List<County> counties;
  final List<HighwayVignette> vignettes;

  const AnnualCountyPassPage({required this.vehicleInfo, required this.counties, required this.vignettes, super.key});

  @override
  _AnnualCountyPassPageState createState() => _AnnualCountyPassPageState();
}

class _AnnualCountyPassPageState extends State<AnnualCountyPassPage> {
  final ApplicationConfig _applicationConfig = GetIt.instance.get<ApplicationConfig>();

  late List<SelectableCounty> _selectableCounties;

  @override
  void initState() {
    super.initState();

    _selectableCounties = _buildSelectableCounties(counties: widget.counties, vignettes: widget.vignettes);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Éves vármegyei matricák', style: _applicationConfig.heading5L),
          SizedBox(height: _applicationConfig.spacing1),
          Center(child: SvgPicture.asset('assets/hungary_map.svg', height: 150)),
          SizedBox(height: _applicationConfig.spacing1),
          Expanded(
            child: ListView.builder(
              itemCount: _selectableCounties.length,
              itemBuilder: (context, index) {
                final item = _selectableCounties[index];
                return CheckboxListTile(
                  title: Text(item.county.name, style: _applicationConfig.bodyTextStyle),
                  subtitle: Text('${item.price.toStringAsFixed(0)} Ft', style: _applicationConfig.heading5L),
                  value: item.selected,
                  activeColor: Colors.black,
                  onChanged: (bool? value) {
                    setState(() {
                      item.selected = value ?? false;
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
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              onPressed: NavigationService.of(context).goToPurchaseConfirmationPage,
              child: const Text('Tovább'),
            ),
          ),
        ],
      ),
    );
  }

  List<SelectableCounty> _buildSelectableCounties({
    required List<County> counties,
    required List<HighwayVignette> vignettes,
  }) {
    final countyVignette = vignettes.firstWhere(
      (v) => v.vignetteTypes.any((type) => type.startsWith('YEAR_')),
      orElse: () => throw Exception('No county vignette found'),
    );

    return counties.map((county) {
      final isIncluded = countyVignette.vignetteTypes.contains(county.id);
      return SelectableCounty(county: county, price: isIncluded ? countyVignette.cost : 0.0);
    }).toList();
  }

  double _getSelectedTotalPrice() => _selectableCounties.where((c) => c.selected).fold(0.0, (sum, c) => sum + c.price);
}

class SelectableCounty {
  final County county;
  final double price;
  bool selected;

  SelectableCounty({required this.county, required this.price, this.selected = false});
}
