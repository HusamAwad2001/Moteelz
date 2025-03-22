import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moteelz/core/helpers/extensions/context_extensions.dart';
import 'package:moteelz/features/wallet/data/models/country/country.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_model.dart';
import 'package:moteelz/features/wallet/data/repos/wallets_repo.dart';
import 'package:moteelz/generated/localization_keys.g.dart';

part 'wallet_state.dart';

class WalletCubit extends Cubit<WalletState> {
  final WalletsRepo walletsRepo;
  WalletCubit(this.walletsRepo)
      : super(const WalletState(status: WalletStatus.initial));

  Future<void> getWallet() async {
    emit(state.copyWith(status: WalletStatus.loading));
    final result = await walletsRepo.getWallet();
    result.fold(
      (errorModel) {
        emit(state.copyWith(
          status: WalletStatus.failure,
          message: errorModel.message,
        ));
      },
      (wallets) {
        emit(state.copyWith(
          status: WalletStatus.success,
          wallets: wallets,
        ));
      },
    );
  }

  Future<void> getCountries(BuildContext context) async {
    context.showLoading();
    final result = await walletsRepo.getCountries();
    result.fold(
      (errorModel) {
        emit(state.copyWith(message: errorModel.message));
        context.showSnackbar(
          message: state.message ?? LocaleKeys.empty_countries.tr(),
          error: true,
        );
      },
      (countries) {
        emit(state.copyWith(
          countries: countries,
          status: WalletStatus.success,
        ));
      },
    );
    if (context.mounted) context.closeLoading();
  }
}
