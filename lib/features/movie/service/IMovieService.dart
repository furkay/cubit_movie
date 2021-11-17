import '../model/movie_details_model.dart';
import '../model/movie_model.dart';
import 'package:dio/dio.dart';

abstract class IMovieService {
  final Dio dio;

  IMovieService({required this.dio});

  Future<SearchModel> fetchMovie({String searchKey = ''});

  Future<MovieDetailsModel> fetchMovieDetails({required String imdbID});
}
