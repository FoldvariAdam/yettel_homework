import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vignette_pass/index.dart';

part 'vignette_pass_event.dart';

part 'vignette_pass_state.dart';

class VignettePassBloc extends Bloc<VignettePassEvent, VignettePassState> {
  final VignettePassInteractor vignettePassInteractor;

  VignettePassBloc({required this.vignettePassInteractor}) : super(VignettePassInitialState()) {
    on<VignettePassGetVehicleHighwayInfoEvent>((event, emit) async {
      emit(VignettePassLoadingState());
      try {
        final results = await Future.wait([
          vignettePassInteractor.getVehicleInfo(),
          vignettePassInteractor.getHighwayInfo(),
        ]);

        final vehicleInfo = results[0] as VehicleInfo;
        final highwayInfo = results[1] as HighwayInfo;

        emit(VignettePassLoadedState(vehicleInfo: vehicleInfo, highwayInfo: highwayInfo));
      } catch (e) {
        emit(VignettePassErrorState('$e'));
      }
    });
  }
}
