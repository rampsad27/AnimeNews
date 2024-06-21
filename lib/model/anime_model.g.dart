// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeModelImpl _$$AnimeModelImplFromJson(Map<String, dynamic> json) =>
    _$AnimeModelImpl(
      title: json['title'] as String?,
      pictureUrl: json['picture_url'] as String?,
      myanimelistUrl: json['myanimelist_url'] as String?,
      myanimelistId: json['myanimallist_id'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
      type: json['type'] as String?,
      airedOn: json['aired_on'] as String?,
      member: (json['member'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AnimeModelImplToJson(_$AnimeModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'picture_url': instance.pictureUrl,
      'myanimelist_url': instance.myanimelistUrl,
      'myanimallist_id': instance.myanimelistId,
      'rank': instance.rank,
      'score': instance.score,
      'type': instance.type,
      'aired_on': instance.airedOn,
      'member': instance.member,
    };
