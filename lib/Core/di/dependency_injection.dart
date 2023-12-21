import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Features/LogIn/data/repos/login_repo.dart';
import '../../Features/LogIn/presentaion/viewModel/loginCubit/cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
