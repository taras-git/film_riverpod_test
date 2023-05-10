import 'package:film_riverpod_test/model/film_details/film_details.dart';
import 'package:film_riverpod_test/model/films/film.dart';
import 'package:film_riverpod_test/services/film_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_provider.freezed.dart';

final filmsProvider =
    StateNotifierProvider<FilmNotifier, FilmState>((ref) => FilmNotifier());

@freezed
class FilmState with _$FilmState {
  const factory FilmState({
    @Default([]) List<Film> films,
    @Default(null) FilmDetails? filmDetails,
    @Default(true) bool isLoading,
  }) = _FilmState;

  const FilmState._();
}

class FilmNotifier extends StateNotifier<FilmState> {
  // ignore: prefer_const_constructors
  FilmNotifier() : super(FilmState()) {
    loadFilms('casablanca');
  }

  Future<void> loadFilms(String title) async {
    state = state.copyWith(isLoading: true);
    final films = await FilmService().searchFilmsByTitle(title) as List<Film>;

    state = state.copyWith(films: films, isLoading: false);
  }

  Future<FilmDetails> loadFilmDetalis(String id) async {
    final filmDetails = await FilmService().searchFilmById(id) as FilmDetails;

    return filmDetails;
  }
}
