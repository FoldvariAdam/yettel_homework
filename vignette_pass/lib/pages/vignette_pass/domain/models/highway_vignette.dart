import 'package:equatable/equatable.dart';

class HighwayVignette extends Equatable {
  final List<String> vignetteTypes;
  final String vehicleCategory;
  final double sum;

  const HighwayVignette({
    required this.vignetteTypes,
    required this.vehicleCategory,
    required this.sum,
  });

  @override
  List<Object?> get props => [vignetteTypes, vehicleCategory, sum];
}
