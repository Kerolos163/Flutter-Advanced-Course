import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_advanced_app/Core/networking/api_service.dart';
import 'package:my_advanced_app/Core/networking/dio_factory.dart';
import 'package:my_advanced_app/Features/LogIn/data/repos/login_repo.dart';
import 'package:my_advanced_app/Features/LogIn/presentaion/viewModel/loginCubit/cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(apiService: getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
