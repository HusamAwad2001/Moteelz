import 'package:moteelz/core/networking/errors/api_error_handler.dart';
import 'package:moteelz/features/wallet/data/models/country/country.dart';
import 'package:moteelz/features/wallet/data/models/wallet/wallet_model.dart';

abstract class WalletsRepo {
  ResultOf<List<WalletModel>> getWallet();
  ResultOf<List<Country>> getCountries();
}
