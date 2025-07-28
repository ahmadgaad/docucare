import 'package:dio/dio.dart';
import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/core/networking/interceptors/authorization_interceptors.dart';
import 'package:docdoc/features/authentication/data/repositories/auth_repository.dart';
import 'package:docdoc/features/authentication/presentation/controller/auth_controller.dart';
import 'package:docdoc/features/home/data/repositories/home_repository.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;
Future<void> initGetIt() async {
  // login
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));
  sl.registerFactory(() => AuthController(sl()));

  // home
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(sl()));
  sl.registerFactory(() => HomeCubit(sl()));

  //! EXTERNAL
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => SharedPrefService(prefs));

  sl.registerLazySingleton<DioConfig>(() => const DioConfig());

  sl.registerLazySingleton<AuthorizationInterceptors>(
    () => AuthorizationInterceptors(),
  );

  sl.registerLazySingleton<DioFactory>(
    () => DioFactory(
      config: sl<DioConfig>(),
      interceptors: [
        sl<AuthorizationInterceptors>(),
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: false,
          responseBody: true,
          error: true,
        ),
      ],
    ),
  );

  sl.registerLazySingleton<Dio>(() => sl<DioFactory>().create());
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));
}
