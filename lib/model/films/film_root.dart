import 'package:film_riverpod_test/model/films/film.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'film_root.freezed.dart';
part 'film_root.g.dart';

@freezed
class FilmRoot with _$FilmRoot {
  @HiveType(typeId: 0, adapterName: 'FilmRootAdapter')
  factory FilmRoot({
    @HiveField(0) @JsonKey(name: 'Search') List<Film>? search,
    String? totalResults,
    @HiveField(1) @JsonKey(name: 'Response') String? response,
  }) = _FilmRoot;

  factory FilmRoot.fromJson(Map<String, dynamic> json) =>
      _$FilmRootFromJson(json);
}
