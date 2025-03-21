import 'package:dartz/dartz.dart';
import 'package:moteelz/core/networking/errors/api_error_model.dart';
import 'package:moteelz/features/wallet/data/models/country/country.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_model.dart';

abstract class WalletsRepo {
  Future<Either<ApiErrorModel, List<WalletModel>>> getWallet();
  Future<Either<ApiErrorModel, List<Country>>> getCountries();
}
