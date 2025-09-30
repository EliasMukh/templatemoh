import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:templatemoh/core/networking/api_service.dart';
import 'package:templatemoh/core/networking/dio_factory.dart';
import 'package:templatemoh/features/login/logic/cubit/login_cubit.dart';
import 'package:templatemoh/features/login/data/repo/login_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Dio&ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerSingleton<ApiService>(ApiService(dio));

  //login

  getIt.registerFactory<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
