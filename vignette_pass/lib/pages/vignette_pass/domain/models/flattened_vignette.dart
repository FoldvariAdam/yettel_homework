import 'package:equatable/equatable.dart';

class FlattenedVignette extends Equatable {
  final String type;
  final String vehicleCategory;
  final String category;
  final double sum;
  final String name;
  final bool selected;

  const FlattenedVignette({
    required this.type,
    required this.vehicleCategory,
    required this.category,
    required this.sum,
    required this.name,
    this.selected = false,
  });

  FlattenedVignette changeSelected({bool? selected}) {
    return FlattenedVignette(
      type: type,
      vehicleCategory: vehicleCategory,
      category: category,
      sum: sum,
      name: name,
      selected: selected ?? this.selected,
    );
  }

  @override
  List<Object?> get props => [type, vehicleCategory, category, sum, name, selected];
}
