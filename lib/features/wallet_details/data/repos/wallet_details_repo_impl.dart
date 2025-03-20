import 'package:dartz/dartz.dart';
import 'package:moteelz/core/networking/api/api_consumer.dart';
import 'package:moteelz/core/networking/api/end_points.dart';
import 'package:moteelz/core/networking/errors/api_error_handler.dart';
import 'package:moteelz/core/networking/errors/api_error_model.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_model.dart';
import 'package:moteelz/features/wallet_details/data/repos/wallet_details_repo.dart';

class WalletDetailsRepoImpl implements WalletDetailsRepo {
  final ApiConsumer api;
  const WalletDetailsRepoImpl(this.api);

  @override
  Future<Either<ApiErrorModel, WalletModel>> getWallet(int id) async {
    try {
      final response = await api.get(EndPoints.wallet);
      WalletModel wallet = WalletModel.fromJson(response[ApiKeys.data]);
      return Right(wallet);
    } on ServerException catch (e) {
      return Left(e.apiErrorModel);
    }
  }
}
