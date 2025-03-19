import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moteelz/features/wallet/data/models/wallet_model.dart';
import 'package:moteelz/features/wallet/data/repos/wallets_repo.dart';

part 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  final WalletsRepo walletsRepo;
  WalletCubit(this.walletsRepo)
      : super(const WalletState(status: WalletStatus.initial));

  void getWallet() async {
    emit(const WalletState(status: WalletStatus.loading));
    final result = await walletsRepo.getWallet();
    result.fold(
      (errorModel) {
        emit(WalletState(
          status: WalletStatus.failure,
          message: errorModel.message,
        ));
      },
      (wallets) {
        emit(WalletState(
          status: WalletStatus.success,
          wallets: wallets,
        ));
      },
    );
  }
}
