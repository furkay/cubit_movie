import 'package:json_annotation/json_annotation.dart';
part 'movie_details_model.g.dart';

@JsonSerializable()
class MovieDetailsModel {
  @JsonKey(name: 'Title')
  String? title;

  @JsonKey(name: 'Year')
  String? year;

  @JsonKey(name: 'Genre')
  String? genre;

  @JsonKey(name: 'Director')
  String? director;

  @JsonKey(name: 'Plot')
  String? plot;

  @JsonKey(name: 'Poster')
  String? poster;

  @JsonKey(name: 'imdbID')
  String? imdbID;

  MovieDetailsModel(
      {this.title,
      this.year,
      this.genre,
      this.director,
      this.plot,
      this.poster,
      this.imdbID});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$MovieDetailsModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MovieDetailsModelToJson(this);
  }
}
