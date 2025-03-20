import 'package:dartz/dartz.dart';
import 'package:moteelz/core/networking/errors/api_error_model.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_model.dart';

abstract class WalletDetailsRepo {
  Future<Either<ApiErrorModel, WalletModel>> getWallet(int id);
}
