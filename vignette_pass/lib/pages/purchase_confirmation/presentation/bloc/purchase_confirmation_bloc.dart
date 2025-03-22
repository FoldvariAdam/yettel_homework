import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:vignette_pass/index.dart';

part 'purchase_confirmation_event.dart';

part 'purchase_confirmation_state.dart';

class PurchaseConfirmationBloc extends Bloc<PurchaseConfirmationEvent, PurchaseConfirmationState> {
  final PurchaseConfirmationInteractor purchaseConfirmationInteractor;

  PurchaseConfirmationBloc({required this.purchaseConfirmationInteractor})
    : super(PurchaseConfirmationInitialState()) {
    on<PurchaseConfirmationPostHighwayOrderEvent>((event, emit) async {
      try {
        await purchaseConfirmationInteractor.postHighWayOrder(event.flattenedVignette);
        emit(PurchaseConfirmationSuccessfulState());
      } catch (e) {
        emit(PurchaseConfirmationErrorState('$e'));
      }
    }, transformer: droppable());
  }
}
