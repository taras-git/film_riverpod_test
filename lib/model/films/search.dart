import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class Search with _$Search {
  factory Search({
    @JsonKey(name: 'Title') String? title,
    @JsonKey(name: 'Year') String? year,
    @JsonKey(name: 'imdbID') String? imdbId,
    @JsonKey(name: 'Type') String? type,
    @JsonKey(name: 'Poster') String? poster,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}
