import 'dart:convert';
import 'package:dio/dio.dart';

class FilmService {
  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://www.omdbapi.com/?apikey=8df6e079',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    ),
  );

  Future<List<dynamic>> searchFilmsByTitle([String title = ""]) async {
    final response = await _dio.get('&s=$title');
    final decoded = await jsonDecode(response.data);
    return decoded['Search'] as List;
  }

  Future<dynamic> searchFilmById(String id) async {
    final response = await _dio.get('&i=$id');
    final decoded = await jsonDecode(response.data);
    return decoded;
  }
}
