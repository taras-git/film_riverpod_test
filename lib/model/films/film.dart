import 'package:freezed_annotation/freezed_annotation.dart';

part 'film.freezed.dart';
part 'film.g.dart';

@freezed
class Film with _$Film {
  factory Film({
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'imdbID') String? imdbId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'Poster') String? poster,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}
