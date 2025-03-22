part of 'purchase_confirmation_bloc.dart';

@immutable
sealed class PurchaseConfirmationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class PurchaseConfirmationPostHighwayOrderEvent extends PurchaseConfirmationEvent {
  final List<FlattenedVignette> flattenedVignette;

  PurchaseConfirmationPostHighwayOrderEvent({required this.flattenedVignette});

  @override
  List<Object?> get props => [flattenedVignette];
}
