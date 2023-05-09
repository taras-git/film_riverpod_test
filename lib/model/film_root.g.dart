// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmRoot _$$_FilmRootFromJson(Map<String, dynamic> json) => _$_FilmRoot(
      search: (json['Search'] as List<dynamic>?)
          ?.map((e) => Search.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalResults: json['totalResults'] as String?,
      response: json['Response'] as String?,
    );

Map<String, dynamic> _$$_FilmRootToJson(_$_FilmRoot instance) =>
    <String, dynamic>{
      'Search': instance.search,
      'totalResults': instance.totalResults,
      'Response': instance.response,
    };
