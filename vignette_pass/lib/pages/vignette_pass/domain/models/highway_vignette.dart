import 'package:equatable/equatable.dart';

class HighwayVignette extends Equatable {
  final List<String> vignetteTypes;
  final double sum;

  const HighwayVignette({
    required this.vignetteTypes,
    required this.sum,
  });

  @override
  List<Object?> get props => [vignetteTypes, sum];
}
