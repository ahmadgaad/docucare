import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/core/networking/dio_factory.dart';
import 'package:docdoc/features/authentication/data/repositories/auth_repository.dart';
import 'package:docdoc/features/authentication/presentation/controller/auth_controller.dart';
import 'package:docdoc/features/home/data/repositories/home_repository.dart';
import 'package:docdoc/features/home/presentation/cubit/home_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;
Future<void> initGetIt() async {
  // login
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));
  sl.registerFactory(() => AuthController(sl()));

  // home
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(sl()));
  sl.registerFactory(() => HomeCubit(sl()));

  //! EXTERNAL
  final dio = DioFactory.getDio();
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));
}
