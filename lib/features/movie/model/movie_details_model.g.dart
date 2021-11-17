// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) =>
    MovieDetailsModel(
      title: json['Title'] as String?,
      year: json['Year'] as String?,
      genre: json['Genre'] as String?,
      director: json['Director'] as String?,
      plot: json['Plot'] as String?,
      poster: json['Poster'] as String?,
      imdbID: json['imdbID'] as String?,
    );

Map<String, dynamic> _$MovieDetailsModelToJson(MovieDetailsModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Year': instance.year,
      'Genre': instance.genre,
      'Director': instance.director,
      'Plot': instance.plot,
      'Poster': instance.poster,
      'imdbID': instance.imdbID,
    };
