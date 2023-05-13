import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'film.freezed.dart';
part 'film.g.dart';

@freezed
class Film with _$Film {
  @HiveType(typeId: 1, adapterName: 'FilmAdapter')
  factory Film({
    @HiveField(0) @JsonKey(name: 'Title') String? title,
    @HiveField(1) @JsonKey(name: 'Year') String? year,
    @HiveField(2) @JsonKey(name: 'imdbID') String? imdbId,
    @HiveField(3) @JsonKey(name: 'Type') String? type,
    @HiveField(4) @JsonKey(name: 'Poster') String? poster,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}
