// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $AnimeTableTable extends AnimeTable
    with TableInfo<$AnimeTableTable, AnimeTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnimeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("Title Default"));
  static const VerificationMeta _pictureurlMeta =
      const VerificationMeta('pictureurl');
  @override
  late final GeneratedColumn<String> pictureurl = GeneratedColumn<String>(
      'pictureurl', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("Picture Default"));
  static const VerificationMeta _airedOnMeta =
      const VerificationMeta('airedOn');
  @override
  late final GeneratedColumn<String> airedOn = GeneratedColumn<String>(
      'aired_on', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("airedOn Default"));
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("type Default"));
  static const VerificationMeta _rankMeta = const VerificationMeta('rank');
  @override
  late final GeneratedColumn<int> rank = GeneratedColumn<int>(
      'rank', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [title, pictureurl, airedOn, type, rank];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'anime_table';
  @override
  VerificationContext validateIntegrity(Insertable<AnimeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('pictureurl')) {
      context.handle(
          _pictureurlMeta,
          pictureurl.isAcceptableOrUnknown(
              data['pictureurl']!, _pictureurlMeta));
    }
    if (data.containsKey('aired_on')) {
      context.handle(_airedOnMeta,
          airedOn.isAcceptableOrUnknown(data['aired_on']!, _airedOnMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('rank')) {
      context.handle(
          _rankMeta, rank.isAcceptableOrUnknown(data['rank']!, _rankMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {rank};
  @override
  AnimeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AnimeTableData(
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      pictureurl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pictureurl']),
      airedOn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}aired_on']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      rank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rank']),
    );
  }

  @override
  $AnimeTableTable createAlias(String alias) {
    return $AnimeTableTable(attachedDatabase, alias);
  }
}

class AnimeTableData extends DataClass implements Insertable<AnimeTableData> {
  final String? title;
  final String? pictureurl;
  final String? airedOn;
  final String? type;
  final int? rank;
  const AnimeTableData(
      {this.title, this.pictureurl, this.airedOn, this.type, this.rank});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || pictureurl != null) {
      map['pictureurl'] = Variable<String>(pictureurl);
    }
    if (!nullToAbsent || airedOn != null) {
      map['aired_on'] = Variable<String>(airedOn);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || rank != null) {
      map['rank'] = Variable<int>(rank);
    }
    return map;
  }

  AnimeTableCompanion toCompanion(bool nullToAbsent) {
    return AnimeTableCompanion(
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      pictureurl: pictureurl == null && nullToAbsent
          ? const Value.absent()
          : Value(pictureurl),
      airedOn: airedOn == null && nullToAbsent
          ? const Value.absent()
          : Value(airedOn),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      rank: rank == null && nullToAbsent ? const Value.absent() : Value(rank),
    );
  }

  factory AnimeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AnimeTableData(
      title: serializer.fromJson<String?>(json['title']),
      pictureurl: serializer.fromJson<String?>(json['pictureurl']),
      airedOn: serializer.fromJson<String?>(json['airedOn']),
      type: serializer.fromJson<String?>(json['type']),
      rank: serializer.fromJson<int?>(json['rank']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'title': serializer.toJson<String?>(title),
      'pictureurl': serializer.toJson<String?>(pictureurl),
      'airedOn': serializer.toJson<String?>(airedOn),
      'type': serializer.toJson<String?>(type),
      'rank': serializer.toJson<int?>(rank),
    };
  }

  AnimeTableData copyWith(
          {Value<String?> title = const Value.absent(),
          Value<String?> pictureurl = const Value.absent(),
          Value<String?> airedOn = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<int?> rank = const Value.absent()}) =>
      AnimeTableData(
        title: title.present ? title.value : this.title,
        pictureurl: pictureurl.present ? pictureurl.value : this.pictureurl,
        airedOn: airedOn.present ? airedOn.value : this.airedOn,
        type: type.present ? type.value : this.type,
        rank: rank.present ? rank.value : this.rank,
      );
  @override
  String toString() {
    return (StringBuffer('AnimeTableData(')
          ..write('title: $title, ')
          ..write('pictureurl: $pictureurl, ')
          ..write('airedOn: $airedOn, ')
          ..write('type: $type, ')
          ..write('rank: $rank')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(title, pictureurl, airedOn, type, rank);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnimeTableData &&
          other.title == this.title &&
          other.pictureurl == this.pictureurl &&
          other.airedOn == this.airedOn &&
          other.type == this.type &&
          other.rank == this.rank);
}

class AnimeTableCompanion extends UpdateCompanion<AnimeTableData> {
  final Value<String?> title;
  final Value<String?> pictureurl;
  final Value<String?> airedOn;
  final Value<String?> type;
  final Value<int?> rank;
  const AnimeTableCompanion({
    this.title = const Value.absent(),
    this.pictureurl = const Value.absent(),
    this.airedOn = const Value.absent(),
    this.type = const Value.absent(),
    this.rank = const Value.absent(),
  });
  AnimeTableCompanion.insert({
    this.title = const Value.absent(),
    this.pictureurl = const Value.absent(),
    this.airedOn = const Value.absent(),
    this.type = const Value.absent(),
    this.rank = const Value.absent(),
  });
  static Insertable<AnimeTableData> custom({
    Expression<String>? title,
    Expression<String>? pictureurl,
    Expression<String>? airedOn,
    Expression<String>? type,
    Expression<int>? rank,
  }) {
    return RawValuesInsertable({
      if (title != null) 'title': title,
      if (pictureurl != null) 'pictureurl': pictureurl,
      if (airedOn != null) 'aired_on': airedOn,
      if (type != null) 'type': type,
      if (rank != null) 'rank': rank,
    });
  }

  AnimeTableCompanion copyWith(
      {Value<String?>? title,
      Value<String?>? pictureurl,
      Value<String?>? airedOn,
      Value<String?>? type,
      Value<int?>? rank}) {
    return AnimeTableCompanion(
      title: title ?? this.title,
      pictureurl: pictureurl ?? this.pictureurl,
      airedOn: airedOn ?? this.airedOn,
      type: type ?? this.type,
      rank: rank ?? this.rank,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (pictureurl.present) {
      map['pictureurl'] = Variable<String>(pictureurl.value);
    }
    if (airedOn.present) {
      map['aired_on'] = Variable<String>(airedOn.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (rank.present) {
      map['rank'] = Variable<int>(rank.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnimeTableCompanion(')
          ..write('title: $title, ')
          ..write('pictureurl: $pictureurl, ')
          ..write('airedOn: $airedOn, ')
          ..write('type: $type, ')
          ..write('rank: $rank')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $AnimeTableTable animeTable = $AnimeTableTable(this);
  late final AnimeDao animeDao = AnimeDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [animeTable];
}
