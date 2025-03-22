import 'package:equatable/equatable.dart';

class VehicleInfo extends Equatable {
  final String name;
  final String plate;

  const VehicleInfo({required this.name, required this.plate});

  @override
  List<Object?> get props => [name, plate];
}
