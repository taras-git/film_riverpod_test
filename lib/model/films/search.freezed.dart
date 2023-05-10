// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Search _$SearchFromJson(Map<String, dynamic> json) {
  return _Search.fromJson(json);
}

/// @nodoc
mixin _$Search {
  @JsonKey(name: 'Title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'Year')
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdbID')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'Poster')
  String? get poster => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCopyWith<Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res, Search>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Title') String? title,
      @JsonKey(name: 'Year') String? year,
      @JsonKey(name: 'imdbID') String? imdbId,
      @JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'Poster') String? poster});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res, $Val extends Search>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
    Object? imdbId = freezed,
    Object? type = freezed,
    Object? poster = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> implements $SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Title') String? title,
      @JsonKey(name: 'Year') String? year,
      @JsonKey(name: 'imdbID') String? imdbId,
      @JsonKey(name: 'Type') String? type,
      @JsonKey(name: 'Poster') String? poster});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$SearchCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? year = freezed,
    Object? imdbId = freezed,
    Object? type = freezed,
    Object? poster = freezed,
  }) {
    return _then(_$_Search(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      imdbId: freezed == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Search implements _Search {
  _$_Search(
      {@JsonKey(name: 'Title') this.title,
      @JsonKey(name: 'Year') this.year,
      @JsonKey(name: 'imdbID') this.imdbId,
      @JsonKey(name: 'Type') this.type,
      @JsonKey(name: 'Poster') this.poster});

  factory _$_Search.fromJson(Map<String, dynamic> json) =>
      _$$_SearchFromJson(json);

  @override
  @JsonKey(name: 'Title')
  final String? title;
  @override
  @JsonKey(name: 'Year')
  final String? year;
  @override
  @JsonKey(name: 'imdbID')
  final String? imdbId;
  @override
  @JsonKey(name: 'Type')
  final String? type;
  @override
  @JsonKey(name: 'Poster')
  final String? poster;

  @override
  String toString() {
    return 'Search(title: $title, year: $year, imdbId: $imdbId, type: $type, poster: $poster)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.poster, poster) || other.poster == poster));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, year, imdbId, type, poster);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchToJson(
      this,
    );
  }
}

abstract class _Search implements Search {
  factory _Search(
      {@JsonKey(name: 'Title') final String? title,
      @JsonKey(name: 'Year') final String? year,
      @JsonKey(name: 'imdbID') final String? imdbId,
      @JsonKey(name: 'Type') final String? type,
      @JsonKey(name: 'Poster') final String? poster}) = _$_Search;

  factory _Search.fromJson(Map<String, dynamic> json) = _$_Search.fromJson;

  @override
  @JsonKey(name: 'Title')
  String? get title;
  @override
  @JsonKey(name: 'Year')
  String? get year;
  @override
  @JsonKey(name: 'imdbID')
  String? get imdbId;
  @override
  @JsonKey(name: 'Type')
  String? get type;
  @override
  @JsonKey(name: 'Poster')
  String? get poster;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}
