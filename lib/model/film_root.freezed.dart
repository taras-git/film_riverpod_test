// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_root.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmRoot _$FilmRootFromJson(Map<String, dynamic> json) {
  return _FilmRoot.fromJson(json);
}

/// @nodoc
mixin _$FilmRoot {
  @JsonKey(name: 'Search')
  List<Search>? get search => throw _privateConstructorUsedError;
  String? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'Response')
  String? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmRootCopyWith<FilmRoot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmRootCopyWith<$Res> {
  factory $FilmRootCopyWith(FilmRoot value, $Res Function(FilmRoot) then) =
      _$FilmRootCopyWithImpl<$Res, FilmRoot>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Search') List<Search>? search,
      String? totalResults,
      @JsonKey(name: 'Response') String? response});
}

/// @nodoc
class _$FilmRootCopyWithImpl<$Res, $Val extends FilmRoot>
    implements $FilmRootCopyWith<$Res> {
  _$FilmRootCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? totalResults = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as List<Search>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmRootCopyWith<$Res> implements $FilmRootCopyWith<$Res> {
  factory _$$_FilmRootCopyWith(
          _$_FilmRoot value, $Res Function(_$_FilmRoot) then) =
      __$$_FilmRootCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Search') List<Search>? search,
      String? totalResults,
      @JsonKey(name: 'Response') String? response});
}

/// @nodoc
class __$$_FilmRootCopyWithImpl<$Res>
    extends _$FilmRootCopyWithImpl<$Res, _$_FilmRoot>
    implements _$$_FilmRootCopyWith<$Res> {
  __$$_FilmRootCopyWithImpl(
      _$_FilmRoot _value, $Res Function(_$_FilmRoot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? totalResults = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_FilmRoot(
      search: freezed == search
          ? _value._search
          : search // ignore: cast_nullable_to_non_nullable
              as List<Search>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmRoot implements _FilmRoot {
  _$_FilmRoot(
      {@JsonKey(name: 'Search') final List<Search>? search,
      this.totalResults,
      @JsonKey(name: 'Response') this.response})
      : _search = search;

  factory _$_FilmRoot.fromJson(Map<String, dynamic> json) =>
      _$$_FilmRootFromJson(json);

  final List<Search>? _search;
  @override
  @JsonKey(name: 'Search')
  List<Search>? get search {
    final value = _search;
    if (value == null) return null;
    if (_search is EqualUnmodifiableListView) return _search;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? totalResults;
  @override
  @JsonKey(name: 'Response')
  final String? response;

  @override
  String toString() {
    return 'FilmRoot(search: $search, totalResults: $totalResults, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmRoot &&
            const DeepCollectionEquality().equals(other._search, _search) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_search), totalResults, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmRootCopyWith<_$_FilmRoot> get copyWith =>
      __$$_FilmRootCopyWithImpl<_$_FilmRoot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilmRootToJson(
      this,
    );
  }
}

abstract class _FilmRoot implements FilmRoot {
  factory _FilmRoot(
      {@JsonKey(name: 'Search') final List<Search>? search,
      final String? totalResults,
      @JsonKey(name: 'Response') final String? response}) = _$_FilmRoot;

  factory _FilmRoot.fromJson(Map<String, dynamic> json) = _$_FilmRoot.fromJson;

  @override
  @JsonKey(name: 'Search')
  List<Search>? get search;
  @override
  String? get totalResults;
  @override
  @JsonKey(name: 'Response')
  String? get response;
  @override
  @JsonKey(ignore: true)
  _$$_FilmRootCopyWith<_$_FilmRoot> get copyWith =>
      throw _privateConstructorUsedError;
}
