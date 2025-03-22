import 'package:equatable/equatable.dart';

class VehicleCategory extends Equatable {
  final String category;
  final String vignetteCategory;

  const VehicleCategory({
    required this.category,
    required this.vignetteCategory,
  });

  @override
  List<Object?> get props => [category, vignetteCategory];
}