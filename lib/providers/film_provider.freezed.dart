// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'film_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  List<Search> get films => throw _privateConstructorUsedError;
  FilmDetails get filmDetails => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieStateCopyWith<MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res, MovieState>;
  @useResult
  $Res call({List<Search> films, FilmDetails filmDetails, bool isLoading});

  $FilmDetailsCopyWith<$Res> get filmDetails;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res, $Val extends MovieState>
    implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
    Object? filmDetails = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      films: null == films
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Search>,
      filmDetails: null == filmDetails
          ? _value.filmDetails
          : filmDetails // ignore: cast_nullable_to_non_nullable
              as FilmDetails,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmDetailsCopyWith<$Res> get filmDetails {
    return $FilmDetailsCopyWith<$Res>(_value.filmDetails, (value) {
      return _then(_value.copyWith(filmDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieStateCopyWith<$Res>
    implements $MovieStateCopyWith<$Res> {
  factory _$$_MovieStateCopyWith(
          _$_MovieState value, $Res Function(_$_MovieState) then) =
      __$$_MovieStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Search> films, FilmDetails filmDetails, bool isLoading});

  @override
  $FilmDetailsCopyWith<$Res> get filmDetails;
}

/// @nodoc
class __$$_MovieStateCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res, _$_MovieState>
    implements _$$_MovieStateCopyWith<$Res> {
  __$$_MovieStateCopyWithImpl(
      _$_MovieState _value, $Res Function(_$_MovieState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
    Object? filmDetails = null,
    Object? isLoading = null,
  }) {
    return _then(_$_MovieState(
      films: null == films
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Search>,
      filmDetails: null == filmDetails
          ? _value.filmDetails
          : filmDetails // ignore: cast_nullable_to_non_nullable
              as FilmDetails,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MovieState extends _MovieState {
  const _$_MovieState(
      {final List<Search> films = const [],
      this.filmDetails = null,
      this.isLoading = true})
      : _films = films,
        super._();

  final List<Search> _films;
  @override
  @JsonKey()
  List<Search> get films {
    if (_films is EqualUnmodifiableListView) return _films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_films);
  }

  @override
  @JsonKey()
  final FilmDetails filmDetails;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'MovieState(films: $films, filmDetails: $filmDetails, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieState &&
            const DeepCollectionEquality().equals(other._films, _films) &&
            (identical(other.filmDetails, filmDetails) ||
                other.filmDetails == filmDetails) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_films), filmDetails, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieStateCopyWith<_$_MovieState> get copyWith =>
      __$$_MovieStateCopyWithImpl<_$_MovieState>(this, _$identity);
}

abstract class _MovieState extends MovieState {
  const factory _MovieState(
      {final List<Search> films,
      final FilmDetails filmDetails,
      final bool isLoading}) = _$_MovieState;
  const _MovieState._() : super._();

  @override
  List<Search> get films;
  @override
  FilmDetails get filmDetails;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_MovieStateCopyWith<_$_MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}
