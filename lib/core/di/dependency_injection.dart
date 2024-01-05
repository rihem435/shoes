import 'package:app/core/networking/api_service.dart';
import 'package:app/core/networking/dio_factory.dart';
import 'package:app/features/login/data/repositories/login_repository.dart';
import 'package:app/features/login/logic/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
// @InjectableInit(
//   initializerName: 'init',
//   preferRelativeImports: true,
//   asExtension: true,
// )
// void initDependencies() => getIt.init();
Future<void> setUpGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepository>(
      () => LoginRepository(apiService: getIt()));
  getIt.registerLazySingleton<LoginCubit>
  (() => LoginCubit(getIt()));

}
