import 'dart:developer';
import 'dart:io';
import 'package:aniime_news/constants/api_constants.dart';
import 'package:aniime_news/di/service_locator.dart';
import 'package:aniime_news/model/anime_model.dart';

import 'package:dio/dio.dart';

class HomeRepository {
  final Dio _dio = getIt.get<Dio>();

  Future<List<AnimeModel>> getHomeScreenData() async {
    List<AnimeModel> posts = [];

    var response = await _dio.get(
      ApiConstants.category,
    );
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      log(data.toString());

      for (var item in data) {
        posts.add(AnimeModel.fromJson(item));
      }
      return posts;
    }
    return posts;
  }

  // Future<String> addPost(AnimeModel AnimeModel) async {
  //   try {
  //     print(AnimeModel.toJson());
  //     final res = await _dio.post(
  //       ApiConstants.category,
  //       data: AnimeModel.toJson(),
  //     );
  //     if (res.statusCode == 200) {
  //       return "success";
  //     }
  //     return "failed";
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future<String> deletePost(int id) async {
  //   try {
  //     final res = await _dio.delete(
  //       "${ApiConstants.posts}/$id",
  //     );
  //     if (res.statusCode == 200 || res.statusCode == 201) {
  //       return "del done";
  //     }
  //     return "fail del";
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
