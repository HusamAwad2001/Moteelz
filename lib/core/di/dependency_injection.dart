import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:moteelz/features/wallet/data/repos/wallets_repo_impl.dart';
import 'package:moteelz/features/wallet/logic/wallet_cubit.dart';
import 'package:moteelz/core/networking/api/dio_consumer.dart';
import 'package:moteelz/features/wallet_details/data/repos/wallet_details_repo_impl.dart';
import 'package:moteelz/features/wallet_details/logic/wallet_details_cubit.dart';

final getIt = GetIt.instance;

// void _registerModule<Repo extends Object, Cubit extends Object>(
//   Repo Function(DioConsumer dioConsumer) repoConstructor,
//   Cubit Function(Repo repo) cubitConstructor,
// ) {
//   getIt.registerLazySingleton<Repo>(
//     () => repoConstructor(getIt<DioConsumer>()),
//   );
//   getIt.registerFactory<Cubit>(() => cubitConstructor(getIt<Repo>()));
// }

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<DioConsumer>(
    () => DioConsumer(dio: getIt<Dio>()),
  );

  // Wallet
  getIt.registerLazySingleton<WalletsRepoImpl>(
    () => WalletsRepoImpl(getIt<DioConsumer>()),
  );
  getIt.registerSingleton(WalletCubit(getIt<WalletsRepoImpl>()));
  // Wallet
  getIt.registerLazySingleton<WalletDetailsRepoImpl>(
    () => WalletDetailsRepoImpl(getIt<DioConsumer>()),
  );
  getIt.registerFactory(() => WalletDetailsCubit(
        getIt<WalletDetailsRepoImpl>(),
      ));
}
