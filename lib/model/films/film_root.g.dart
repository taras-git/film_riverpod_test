// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_root.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FilmRootAdapter extends TypeAdapter<_$_FilmRoot> {
  @override
  final int typeId = 0;

  @override
  _$_FilmRoot read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_FilmRoot(
      search: (fields[0] as List?)?.cast<Film>(),
      response: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_FilmRoot obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.response)
      ..writeByte(0)
      ..write(obj.search);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilmRootAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmRoot _$$_FilmRootFromJson(Map<String, dynamic> json) => _$_FilmRoot(
      search: (json['Search'] as List<dynamic>?)
          ?.map((e) => Film.fromJson(e as Map<String, dynamic>))
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
