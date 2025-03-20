import 'package:dartz/dartz.dart';
import 'package:moteelz/core/networking/api/api_consumer.dart';
import 'package:moteelz/core/networking/api/end_points.dart';
import 'package:moteelz/core/networking/errors/api_error_handler.dart';
import 'package:moteelz/core/networking/errors/api_error_model.dart';
import 'package:moteelz/features/wallet/data/models/country/country_model.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_model.dart';
import 'package:moteelz/features/wallet/data/repos/wallets_repo.dart';

class WalletsRepoImpl implements WalletsRepo {
  final ApiConsumer api;
  const WalletsRepoImpl(this.api);

  @override
  Future<Either<ApiErrorModel, List<WalletModel>>> getWallet() async {
    try {
      final response = await api.get(EndPoints.wallet);
      List<WalletModel> wallet = [];
      for (var item in response[ApiKeys.data]) {
        wallet.add(WalletModel.fromJson(item));
      }
      return Right(wallet);
    } on ServerException catch (e) {
      return Left(e.apiErrorModel);
    }
  }

  @override
  Future<Either<ApiErrorModel, List<CountryModel>>> getCountries() async {
    try {
      final response = await api.get(EndPoints.countries);
      List<CountryModel> countries = [];
      for (var item in response[ApiKeys.data]) {
        countries.add(CountryModel.fromJson(item));
      }
      return Right(countries);
    } on ServerException catch (e) {
      return Left(e.apiErrorModel);
    }
  }
}
