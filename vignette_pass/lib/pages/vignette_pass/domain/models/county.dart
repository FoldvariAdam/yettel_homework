import 'package:equatable/equatable.dart';

class County extends Equatable {
  final String id;
  final String name;

  const County({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}
