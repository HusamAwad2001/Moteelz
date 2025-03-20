part of 'wallet_details_cubit.dart';

enum WalletDetailsStatus { initial, loading, success, failure }

extension WalletDetailsStatusX on WalletDetailsState {
  bool get isInitial => status == WalletDetailsStatus.initial;
  bool get isLoading => status == WalletDetailsStatus.loading;
  bool get isSuccess => status == WalletDetailsStatus.success;
  bool get isFailure => status == WalletDetailsStatus.failure;
}

class WalletDetailsState extends Equatable {
  const WalletDetailsState({
    required this.status,
    this.message,
    this.wallet,
  });

  final WalletDetailsStatus status;
  final String? message;
  final WalletDetailsModel? wallet;

  WalletDetailsState copyWith({
    WalletDetailsStatus? status,
    String? message,
    WalletDetailsModel? wallet,
  }) {
    return WalletDetailsState(
      status: status ?? this.status,
      message: message ?? this.message,
      wallet: wallet ?? this.wallet,
    );
  }

  @override
  List<Object?> get props => [status, message, wallet];
}
