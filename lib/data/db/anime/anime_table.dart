import 'package:drift/drift.dart';

class AnimeTable extends Table {
  TextColumn get title =>
      text().nullable().withDefault(const Constant("Title Default"))();

  TextColumn get pictureurl =>
      text().nullable().withDefault(const Constant("Picture Default"))();
  TextColumn get airedOn =>
      text().nullable().withDefault(const Constant("airedOn Default"))();

  TextColumn get type =>
      text().nullable().withDefault(const Constant("type Default"))();
  IntColumn get rank => integer().nullable()();

  @override
  Set<Column>? get primaryKey => {
        rank,
      };
}
