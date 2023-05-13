import 'package:dio/dio.dart';
import 'package:film_riverpod_test/model/film_details/film_details.dart';
import 'package:film_riverpod_test/model/films/film.dart';
import 'package:film_riverpod_test/services/film_service.dart';
import 'package:film_riverpod_test/services/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_provider.freezed.dart';

final filmsProvider = StateNotifierProvider<FilmNotifier, FilmState>((ref) {
  return FilmNotifier();
});

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
  FilmNotifier() : super(const FilmState()) {
    initialState();
  }

  void initialState() {
    state = state.copyWith(isLoading: false);
  }

  Future<void> loadFilms(String title) async {
    state = state.copyWith(isLoading: true);
    final filmsBox = await HiveService.openFilmsBox();
    List<Film>? cachedFilms;

    try {
      cachedFilms = filmsBox.getCachedFilms(title);
    } on Exception catch (e) {
      cachedFilms = null;
      debugPrint(e.toString());
    }
    //
    if (cachedFilms == null) {
      debugPrint('No cached films...');
    } else {
      debugPrint('Found ${cachedFilms.length} cached films');
    }

    if (cachedFilms != null && cachedFilms.isNotEmpty) {
      state = state.copyWith(
        films: cachedFilms,
        isLoading: false,
        errorMessage: "",
      );
      return;
    }
    //
    final response = await FilmService().searchFilmsByTitle(title);
    // Bad search criteria
    if (response == null) {
      state = state.copyWith(
        films: [],
        isLoading: false,
        errorMessage: "Please try other title",
      );
      return;
    }
    // No Internet
    if (response is String) {
      state = state.copyWith(
          films: [],
          isLoading: false,
          errorMessage: "Please check Internet connection");
      return;
    }
    //
    try {
      final films = response as List<Film>;
      // store films in Hive
      filmsBox.storeFilms(title, films);
      //
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
