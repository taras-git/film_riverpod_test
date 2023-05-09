import 'package:freezed_annotation/freezed_annotation.dart';

import 'search.dart';

part 'film_root.freezed.dart';
part 'film_root.g.dart';

@freezed
class FilmRoot with _$FilmRoot {
  factory FilmRoot({
    @JsonKey(name: 'Search') List<Search>? search,
    String? totalResults,
    @JsonKey(name: 'Response') String? response,
  }) = _FilmRoot;

  factory FilmRoot.fromJson(Map<String, dynamic> json) =>
      _$FilmRootFromJson(json);
}
