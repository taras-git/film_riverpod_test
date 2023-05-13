import 'package:film_riverpod_test/model/films/film.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveService {
  late Box _filmBox;
  late Box _filmDetailsBox;

  HiveService._create();

  static Future<HiveService> openFilmsBox() async {
    final component = HiveService._create();
    await component._initFilmsBox();
    return component;
  }

  static Future<HiveService> openFilmDetailsBox() async {
    final component = HiveService._create();
    await component._initFilmDetailsBox();
    return component;
  }

  Future<void> _initFilmsBox() async {
    _filmBox = await Hive.openBox('films');
  }

  Future<void> _initFilmDetailsBox() async {
    _filmDetailsBox = await Hive.openBox('filmDetails');
  }

  void storeFilms(String title, List<Film> films) {
    _filmBox.put(title, films);
  }

  List<Film>? getCachedFilms(String title) {
    if (_filmBox.keys.contains(title)) {
      try {
        final cachedFilms = _filmBox.get(title);
        if (cachedFilms is List<Film>) {
          return cachedFilms;
        }
      } on Exception catch (e) {
        debugPrint(e.toString());
        return null;
      }
    } else {
      return null;
    }
    return null;
  }

  void storeFilm(String title, Film film) {
    _filmDetailsBox.put(title, film);
  }

  Film getFilm(String title) {
    return _filmDetailsBox.get(title);
  }
}
