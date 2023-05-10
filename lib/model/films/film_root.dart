import 'package:film_riverpod_test/model/films/film.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_root.freezed.dart';
part 'film_root.g.dart';

@freezed
class FilmRoot with _$FilmRoot {
  factory FilmRoot({
    @JsonKey(name: 'Search') List<Film>? search,
    String? totalResults,
    @JsonKey(name: 'Response') String? response,
  }) = _FilmRoot;

  factory FilmRoot.fromJson(Map<String, dynamic> json) =>
      _$FilmRootFromJson(json);
}