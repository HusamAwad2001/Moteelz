import 'package:dartz/dartz.dart';
import 'package:moteelz/core/networking/errors/api_error_model.dart';
import 'package:moteelz/features/wallet_details/data/models/wallet_details_model.dart';

abstract class WalletDetailsRepo {
  Future<Either<ApiErrorModel, WalletDetailsModel>> getWallet(int id);
}
