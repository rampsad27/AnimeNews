import 'dart:developer';
import 'dart:io';
import 'package:aniime_news/constants/api_constants.dart';
import 'package:aniime_news/data/db/app_database.dart';
import 'package:aniime_news/di/service_locator.dart';
import 'package:aniime_news/model/anime_model.dart';
import 'package:aniime_news/repository/abstract_repository.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AnimeRepository implements AuthenticationRepository {
  final Dio _dio = getIt.get<Dio>();
  final AppDatabase _appDatabase = getIt.get<AppDatabase>();
  @override
  Future<List<AnimeModel>?> getAnime() async {
    try {
      var animeFromLocal = await _getAnimeFromLocalDb();
      if (animeFromLocal != null && animeFromLocal.isNotEmpty) {
        return animeFromLocal;
      }

      var response = await _dio.get(ApiConstants.category);
      var data = (response.data as List)
          .map((item) => AnimeModel.fromJson(item))
          .toList();

      for (var element in data) {
        await _appDatabase.animeDao.saveAnime(element);
      }
      return _getAnimeFromLocalDb();
    } catch (e) {
      log("Exception in AnimeRepository: $e");
      return null;
    }
  }

  @override
  Future<List<AnimeModel>?> _getAnimeFromLocalDb() async {
    return await _appDatabase.animeDao.getAnime();
  }

  @override
  Future<void> deleteAnimeByRank(int rank) async {
    await _appDatabase.animeDao.deleteAnimeByrank(rank);
  }
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

