part of 'purchase_confirmation_bloc.dart';

@immutable
sealed class PurchaseConfirmationState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class PurchaseConfirmationInitialState extends PurchaseConfirmationState {}

final class PurchaseConfirmationSuccessfulState extends PurchaseConfirmationState {}

final class PurchaseConfirmationErrorState extends PurchaseConfirmationState {
  final String exceptionMessage;

  PurchaseConfirmationErrorState(this.exceptionMessage);

  @override
  List<Object?> get props => [exceptionMessage];
}
