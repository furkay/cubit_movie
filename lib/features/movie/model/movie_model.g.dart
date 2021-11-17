// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      imdbID: json['imdbID'] as String?,
      title: json['Title'] as String?,
      year: json['Year'] as String?,
      type: json['Type'] as String?,
      poster: json['Poster'] as String?,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'imdbID': instance.imdbID,
      'Title': instance.title,
      'Year': instance.year,
      'Type': instance.type,
      'Poster': instance.poster,
    };

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      search: (json['Search'] as List<dynamic>?)
          ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'Search': instance.search,
    };
