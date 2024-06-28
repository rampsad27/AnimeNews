import 'package:aniime_news/model/anime_model.dart';

abstract class AuthenticationRepository {
  Future<List<AnimeModel>?> getAnime();
  Future<List<AnimeModel>?> _getAnimeFromLocalDb();
  Future<void> deleteAnimeByRank(int rank);
}
