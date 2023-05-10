import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating.dart';

part 'film_details.freezed.dart';
part 'film_details.g.dart';

@freezed
class FilmDetails with _$FilmDetails {
  factory FilmDetails({
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'Rated') String? rated,
    @JsonKey(name: 'Released') String? released,
    @JsonKey(name: 'Runtime') String? runtime,
    @JsonKey(name: 'Genre') String? genre,
    @JsonKey(name: 'Director') String? director,
    @JsonKey(name: 'Writer') String? writer,
    @JsonKey(name: 'Actors') String? actors,
    @JsonKey(name: 'Plot') String? plot,
    @JsonKey(name: 'Language') String? language,
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'Awards') String? awards,
    @JsonKey(name: 'Poster') String? poster,
    @JsonKey(name: 'Ratings') List<Rating>? ratings,
    @JsonKey(name: 'Metascore') String? metascore,
    String? imdbRating,
    String? imdbVotes,
    @JsonKey(name: 'imdbID') String? imdbId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'DVD') String? dvd,
    @JsonKey(name: 'BoxOffice') String? boxOffice,
    @JsonKey(name: 'Production') String? production,
    @JsonKey(name: 'Website') String? website,
    @JsonKey(name: 'Response') String? response,
  }) = _FilmDetails;

  factory FilmDetails.fromJson(Map<String, dynamic> json) =>
      _$FilmDetailsFromJson(json);
}
