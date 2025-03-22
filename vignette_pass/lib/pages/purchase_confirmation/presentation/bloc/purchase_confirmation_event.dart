part of 'purchase_confirmation_bloc.dart';

@immutable
sealed class PurchaseConfirmationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class PurchaseConfirmationPostHighwayOrderEvent extends PurchaseConfirmationEvent {
  final PostHighwayOrderRequest postHighwayOrder;

  PurchaseConfirmationPostHighwayOrderEvent({required this.postHighwayOrder});

  @override
  List<Object?> get props => [postHighwayOrder];
}
