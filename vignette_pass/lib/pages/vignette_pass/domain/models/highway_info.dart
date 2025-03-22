import 'package:equatable/equatable.dart';
import 'package:vignette_pass/index.dart';

class HighwayInfo extends Equatable {
  final List<HighwayVignette> vignettesWithYear;
  final List<HighwayVignette> vignettesWithoutYear;
  final List<County> counties;

  const HighwayInfo({
    required this.vignettesWithYear,
    required this.vignettesWithoutYear,
    required this.counties,
  });

  @override
  List<Object?> get props => [vignettesWithYear, vignettesWithoutYear, counties];
}