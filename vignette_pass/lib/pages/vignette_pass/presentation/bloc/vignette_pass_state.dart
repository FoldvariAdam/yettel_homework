part of 'vignette_pass_bloc.dart';

@immutable
sealed class VignettePassState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class VignettePassInitialState extends VignettePassState {}

final class VignettePassLoadingState extends VignettePassState {}

final class VignettePassLoadedState extends VignettePassState {
  final VehicleInfo vehicleInfo;
  final HighwayInfo highwayInfo;

  VignettePassLoadedState({required this.vehicleInfo, required this.highwayInfo});

  @override
  List<Object?> get props => [vehicleInfo, highwayInfo];
}

final class VignettePassErrorState extends VignettePassState {
  final String exceptionMessage;

  VignettePassErrorState(this.exceptionMessage);

  @override
  List<Object?> get props => [exceptionMessage];
}
