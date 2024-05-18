import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news/core/network/dio_helper/api_services.dart';
import 'package:news/core/network/dio_helper/dio_helper.dart';
import 'package:news/features/home/data/repo/home_repo.dart';
import 'package:news/features/home/logic/home_cubit.dart';

final getIt = GetIt.instance;

Future<void> setGetIt() async {

  Dio dio = await DioHelper.getDio();

  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));


  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));



}

// getIt<ApiServices>