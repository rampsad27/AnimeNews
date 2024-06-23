import 'package:aniime_news/data/db/anime/anime_table.dart';
import 'package:aniime_news/data/db/app_database.dart';
import 'package:aniime_news/model/anime_model.dart';
import 'package:drift/drift.dart';
part 'anime_dao.g.dart';

// the _AnimeDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [AnimeTable])
class AnimeDao extends DatabaseAccessor<AppDatabase> with _$AnimeDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  AnimeDao(AppDatabase db) : super(db);

  Future<List<AnimeModel>?> getAnime() async {
    final res = await select(animeTable).get();

    return res
        .map((element) => AnimeModel(
              title: element.title,
              pictureUrl: element.pictureurl,
              airedOn: element.airedOn,
              type: element.type,
              rank: element.rank,
            ))
        .toList();
  }

  Future<AnimeModel> getAnimeByrank(int rank) async {
    final res = await (select(animeTable)
          ..where((tbl) => tbl.rank.isBiggerThanValue(5)))
        .getSingleOrNull();

    return AnimeModel(
      title: res?.title,
      pictureUrl: res?.pictureurl,
      airedOn: res?.airedOn,
      type: res?.type,
      rank: res?.rank,
    );
  }

  Future<int> deleteAnime() async {
    return await delete(animeTable).go();
  }

  Future<int> deleteAnimeByrank(int rank) async {
    return await (delete(animeTable)..where((tbl) => tbl.rank.equals(rank)))
        .go();
  }

//  insert or add through companion
  Future<void> saveAnime(AnimeModel animeModel) async {
    await into(animeTable).insertOnConflictUpdate(AnimeTableCompanion(
      title: Value(animeModel.title ?? ""),
      pictureurl: Value(animeModel.pictureUrl ?? ""),
      airedOn: Value(animeModel.airedOn ?? ""),
      type: Value(animeModel.type ?? ""),
      rank: Value(animeModel.rank),
    ));
  }
}
