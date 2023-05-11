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
    @Default('') String errorMessage,
  }) = _FilmState;

  const FilmState._();
}

class FilmNotifier extends StateNotifier<FilmState> {
  // ignore: prefer_const_constructors
  FilmNotifier() : super(FilmState()) {
    initialState();
  }

  void initialState() {
    state = state.copyWith(isLoading: false);
  }

  Future<void> loadFilms(String title) async {
    state = state.copyWith(isLoading: true);
    final response = await FilmService().searchFilmsByTitle(title);
    if (response == null) {
      state = state.copyWith(
        films: [],
        isLoading: false,
        errorMessage: "Nothing found...",
      );
      return;
    }
    try {
      final films = response as List<Film>;
      state = state.copyWith(
        films: films,
        isLoading: false,
        errorMessage: "",
      );
    } on Exception catch (e) {
      state = state.copyWith(
        films: [],
        isLoading: false,
        errorMessage: "Somthing wrong with the response",
      );
    }
  }

  Future<FilmDetails> loadFilmDetalis(String id) async {
    final filmDetails = await FilmService().searchFilmById(id) as FilmDetails;

    return filmDetails;
  }
}
