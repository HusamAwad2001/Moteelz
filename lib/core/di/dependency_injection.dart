import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../networking/api/dio_consumer.dart';

final getIt = GetIt.instance;

void _registerModule<Repo extends Object, Cubit extends Object>(
  Repo Function(DioConsumer dioConsumer) repoConstructor,
  Cubit Function(Repo repo) cubitConstructor,
) {
  getIt.registerLazySingleton<Repo>(
    () => repoConstructor(getIt<DioConsumer>()),
  );
  getIt.registerFactory<Cubit>(() => cubitConstructor(getIt<Repo>()));
}

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<DioConsumer>(
    () => DioConsumer(dio: getIt<Dio>()),
  );

  // SignUp
  // _registerModule<SignUpRepo, SignUpCubit>(
  //   (dioConsumer) => SignUpRepo(api: dioConsumer),
  //   (repo) => SignUpCubit(repo),
  // );
}
