import '../../../core/utility/network_query.dart';
import '../model/movie_details_model.dart';
import '../model/movie_model.dart';
import 'IMovieService.dart';
import 'package:dio/dio.dart';

class MovieService extends IMovieService {
  MovieService(Dio dio) : super(dio: dio);

  @override
  Future<SearchModel> fetchMovie({String searchKey = ''}) async {
    final response = await dio.get(
      '',
      queryParameters: NetworkQuery.search.searchMovie(searchKey),
    );

    var data = response.data;
    if (data != null) {
      return SearchModel.fromJson(data);
    }

    return SearchModel();
  }

  @override
  Future<MovieDetailsModel> fetchMovieDetails({required String imdbID}) async {
    final response = await dio.get('',
        queryParameters: NetworkQuery.details.movieDetails(imdbID));
    var data = response.data;
    if (data != null) {
      return MovieDetailsModel.fromJson(data);
    }

    return MovieDetailsModel();
  }
}
