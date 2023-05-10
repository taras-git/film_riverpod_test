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
mixin _$FilmState {
  List<Film> get films => throw _privateConstructorUsedError;
  FilmDetails? get filmDetails => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmStateCopyWith<FilmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmStateCopyWith<$Res> {
  factory $FilmStateCopyWith(FilmState value, $Res Function(FilmState) then) =
      _$FilmStateCopyWithImpl<$Res, FilmState>;
  @useResult
  $Res call({List<Film> films, FilmDetails? filmDetails, bool isLoading});

  $FilmDetailsCopyWith<$Res>? get filmDetails;
}

/// @nodoc
class _$FilmStateCopyWithImpl<$Res, $Val extends FilmState>
    implements $FilmStateCopyWith<$Res> {
  _$FilmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
    Object? filmDetails = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      films: null == films
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
      filmDetails: freezed == filmDetails
          ? _value.filmDetails
          : filmDetails // ignore: cast_nullable_to_non_nullable
              as FilmDetails?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmDetailsCopyWith<$Res>? get filmDetails {
    if (_value.filmDetails == null) {
      return null;
    }

    return $FilmDetailsCopyWith<$Res>(_value.filmDetails!, (value) {
      return _then(_value.copyWith(filmDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FilmStateCopyWith<$Res> implements $FilmStateCopyWith<$Res> {
  factory _$$_FilmStateCopyWith(
          _$_FilmState value, $Res Function(_$_FilmState) then) =
      __$$_FilmStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Film> films, FilmDetails? filmDetails, bool isLoading});

  @override
  $FilmDetailsCopyWith<$Res>? get filmDetails;
}

/// @nodoc
class __$$_FilmStateCopyWithImpl<$Res>
    extends _$FilmStateCopyWithImpl<$Res, _$_FilmState>
    implements _$$_FilmStateCopyWith<$Res> {
  __$$_FilmStateCopyWithImpl(
      _$_FilmState _value, $Res Function(_$_FilmState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
    Object? filmDetails = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$_FilmState(
      films: null == films
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
      filmDetails: freezed == filmDetails
          ? _value.filmDetails
          : filmDetails // ignore: cast_nullable_to_non_nullable
              as FilmDetails?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FilmState extends _FilmState {
  const _$_FilmState(
      {final List<Film> films = const [],
      this.filmDetails = null,
      this.isLoading = true})
      : _films = films,
        super._();

  final List<Film> _films;
  @override
  @JsonKey()
  List<Film> get films {
    if (_films is EqualUnmodifiableListView) return _films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_films);
  }

  @override
  @JsonKey()
  final FilmDetails? filmDetails;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'FilmState(films: $films, filmDetails: $filmDetails, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmState &&
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
  _$$_FilmStateCopyWith<_$_FilmState> get copyWith =>
      __$$_FilmStateCopyWithImpl<_$_FilmState>(this, _$identity);
}

abstract class _FilmState extends FilmState {
  const factory _FilmState(
      {final List<Film> films,
      final FilmDetails? filmDetails,
      final bool isLoading}) = _$_FilmState;
  const _FilmState._() : super._();

  @override
  List<Film> get films;
  @override
  FilmDetails? get filmDetails;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_FilmStateCopyWith<_$_FilmState> get copyWith =>
      throw _privateConstructorUsedError;
}
