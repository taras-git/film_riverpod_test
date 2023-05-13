import 'package:dio/dio.dart';
import 'package:film_riverpod_test/model/film_details/film_details.dart';
import 'package:film_riverpod_test/model/films/film_root.dart';
import 'package:flutter/material.dart';

class FilmService {
  static const path = '/?apikey=8df6e079';
  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://www.omdbapi.com',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  Future<dynamic> searchFilmsByTitle(String title) async {
    Response? response;
    try {
      response = await _dio.get(
        path,
        queryParameters: {'s': title},
      );
    } on DioError catch (e) {
      debugPrint(e.toString());
      return e.toString();
    }

    try {
      final films = FilmRoot.fromJson(response.data);
      return films.search;
    } on Exception catch (e) {
      debugPrint(e.toString());
      return e.toString();
    }
  }

  Future<dynamic> searchFilmById(String id) async {
    final response = await _dio.get(
      path,
      queryParameters: {'i': id},
    );
    final details = FilmDetails.fromJson(response.data);
    return details;
  }
}
