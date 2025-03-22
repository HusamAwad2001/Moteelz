import 'package:moteelz/core/networking/errors/api_error_handler.dart';
import 'package:moteelz/features/wallet_details/data/models/wallet_details_model.dart';

abstract class WalletDetailsRepo {
  ResultOf<WalletDetailsModel> getWallet(int id);
}
