import 'package:equatable/equatable.dart';

class HighwayVignette extends Equatable {
  final List<String> vignetteTypes;
  final String vehicleCategory;
  final double cost;
  final double trxFee;
  final double sum;

  const HighwayVignette({
    required this.vignetteTypes,
    required this.vehicleCategory,
    required this.cost,
    required this.trxFee,
    required this.sum,
  });

  @override
  List<Object?> get props => [vignetteTypes, vehicleCategory, cost, trxFee, sum];
}
