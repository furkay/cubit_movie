import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  @JsonKey(name: 'imdbID')
  String? imdbID;

  @JsonKey(name: 'Title')
  String? title;

  @JsonKey(name: 'Year')
  String? year;

  @JsonKey(name: 'Type')
  String? type;

  @JsonKey(name: 'Poster')
  String? poster;

  MovieModel({this.imdbID, this.title, this.year, this.type, this.poster});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return _$MovieModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MovieModelToJson(this);
  }
}

@JsonSerializable()
class SearchModel {
  @JsonKey(name: 'Search')
  List<MovieModel>? search;
  SearchModel({this.search});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }
  Map<String, dynamic> toJson() {
    return _$SearchModelToJson(this);
  }
}
