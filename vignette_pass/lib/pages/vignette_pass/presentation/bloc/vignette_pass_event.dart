part of 'vignette_pass_bloc.dart';

@immutable
sealed class VignettePassEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class VignettePassGetVehicleHighwayInfoEvent extends VignettePassEvent {}
