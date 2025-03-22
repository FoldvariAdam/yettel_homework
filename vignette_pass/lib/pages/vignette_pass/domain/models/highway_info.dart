import 'package:equatable/equatable.dart';
import 'package:vignette_pass/index.dart';

class HighwayInfo extends Equatable {
  final List<FlattenedVignette> vignettesWithYear;
  final List<FlattenedVignette> vignettesWithoutYear;

  const HighwayInfo({
    required this.vignettesWithYear,
    required this.vignettesWithoutYear,
  });

  @override
  List<Object?> get props => [vignettesWithYear, vignettesWithoutYear];
}
