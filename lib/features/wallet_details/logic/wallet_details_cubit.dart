import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moteelz/features/wallet_details/data/models/wallet_details_model.dart';
import 'package:moteelz/features/wallet_details/data/repos/wallet_details_repo.dart';

part 'wallet_details_state.dart';

class WalletDetailsCubit extends Cubit<WalletDetailsState> {
  final WalletDetailsRepo walletDetailsRepo;
  WalletDetailsCubit(this.walletDetailsRepo)
      : super(const WalletDetailsState(status: WalletDetailsStatus.initial));

  Future<void> getWallet(int id) async {
    emit(state.copyWith(status: WalletDetailsStatus.loading));
    final result = await walletDetailsRepo.getWallet(id);
    result.fold(
      (errorModel) {
        emit(state.copyWith(
          status: WalletDetailsStatus.failure,
          message: errorModel.message,
        ));
      },
      (wallet) {
        emit(state.copyWith(
          status: WalletDetailsStatus.success,
          wallet: wallet,
        ));
      },
    );
  }
}
