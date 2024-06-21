import 'package:aniime_news/constants/api_constants.dart';
import 'package:aniime_news/repository/home_repository.dart';
import 'package:aniime_news/services/dio_helper.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 6000),
        receiveTimeout: const Duration(seconds: 6000),
        headers: {
          "Content-Type": "application/json",
          "x-rapidapi-host": "myanimelist.p.rapidapi.com",
          "x-rapidapi-key": "b71c0a665dmsh1d981cd3efc691bp1bcbd8jsn476cf1f00220"
        },
      ),
    ),
  );

  getIt.registerSingleton<DioHelper>(DioHelper()); //interceptor
  getIt.registerSingleton<HomeRepository>(HomeRepository());
}
