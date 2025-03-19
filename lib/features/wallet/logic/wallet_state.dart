part of 'wallet_cubit.dart';

enum WalletStatus { initial, loading, success, failure }

extension WalletStatusX on WalletState {
  bool get isInitial => status == WalletStatus.initial;
  bool get isLoading => status == WalletStatus.loading;
  bool get isSuccess => status == WalletStatus.success;
  bool get isFailure => status == WalletStatus.failure;
}

class WalletState extends Equatable {
  const WalletState({
    required this.status,
    this.message,
    this.wallets,
  });

  final WalletStatus status;
  final String? message;
  final List<WalletModel>? wallets;

  WalletState copyWith({
    WalletStatus? status,
    String? message,
    List<WalletModel>? wallets,
  }) {
    return WalletState(
      status: status ?? this.status,
      message: message ?? this.message,
      wallets: wallets ?? this.wallets,
    );
  }

  @override
  List<Object?> get props => [status, message, wallets];
}
