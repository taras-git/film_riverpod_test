// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FilmAdapter extends TypeAdapter<_$_Film> {
  @override
  final int typeId = 1;

  @override
  _$_Film read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Film(
      title: fields[0] as String?,
      year: fields[1] as String?,
      imdbId: fields[2] as String?,
      type: fields[3] as String?,
      poster: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Film obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.year)
      ..writeByte(2)
      ..write(obj.imdbId)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.poster);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FilmAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Film _$$_FilmFromJson(Map<String, dynamic> json) => _$_Film(
      title: json['Title'] as String?,
      year: json['Year'] as String?,
      imdbId: json['imdbID'] as String?,
      type: json['Type'] as String?,
      poster: json['Poster'] as String?,
    );

Map<String, dynamic> _$$_FilmToJson(_$_Film instance) => <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'imdbID': instance.imdbId,
      'Type': instance.type,
      'Poster': instance.poster,
    };
