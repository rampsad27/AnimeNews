// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'anime_model.freezed.dart';
part 'anime_model.g.dart';

@freezed
class AnimeModel with _$AnimeModel {
  const factory AnimeModel({
    String? title,
    @JsonKey(name: "picture_url") String? pictureUrl,
    @JsonKey(name: "myanimelist_url") String? myanimelistUrl,
    @JsonKey(name: "myanimallist_id") String? myanimelistId,
    int? rank,
    double? score,
    String? type,
    @JsonKey(name: "aired_on") String? airedOn,
    int? member,
  }) = _AnimeModel;

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);
}
