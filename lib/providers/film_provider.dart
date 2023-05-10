import 'package:film_riverpod_test/model/film_details/film_details.dart';
import 'package:film_riverpod_test/model/search.dart';
import 'package:film_riverpod_test/services/film_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_provider.freezed.dart';

final moviesProvider =
    StateNotifierProvider<MovieNotifier, MovieState>((ref) => MovieNotifier());

@freezed
abstract class MovieState with _$MovieState {
  const factory MovieState({
    @Default([]) List<Search> films,
    @Default(null) FilmDetails filmDetails,
    @Default(true) bool isLoading,
  }) = _MovieState;

  const MovieState._();
}

class MovieNotifier extends StateNotifier<MovieState> {
  // ignore: prefer_const_constructors
  MovieNotifier() : super(MovieState()) {
    loadFilms();
  }

  Future<void> loadFilms() async {
    state = state.copyWith(isLoading: true);
    final filmRoot = await FilmService().searchFilmsByTitle();
    final films = filmRoot.map((film) => Search.fromJson(film)).toList();
    state = state.copyWith(films: films, isLoading: false);
  }

  Future<void> loadMovie(String id) async {
    state = state.copyWith(isLoading: true);
    final film = await FilmService().searchFilmById(id);
    final filmDetails = FilmDetails.fromJson(film);
    state = state.copyWith(filmDetails: filmDetails, isLoading: false);
  }
}
