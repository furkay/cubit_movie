import 'package:bloc/bloc.dart';
import 'package:cubit_movie/features/movie/model/movie_details_model.dart';
import 'package:cubit_movie/features/movie/service/movie_service.dart';
import 'package:meta/meta.dart';

part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final MovieService movieService;
  late final MovieDetailsModel movieDetailsModel;
  MovieDetailsCubit(this.movieService, {String? imdbID})
      : super(MovieDetailsInitial()) {
    fetchMoviesDetails(imdbID: imdbID);
  }

  Future<void> fetchMoviesDetails({String? imdbID}) async {
    if (imdbID == null) return;
    emit(MovieDetailsLoading());
    try {
      final detailsModel = await movieService.fetchMovieDetails(imdbID: imdbID);
      if (detailsModel.title == null) {
        emit(MovieDetailsEmpty());
      } else {
        emit(MovieDetailsItem(detailsModel));
      }
      movieDetailsModel = detailsModel;
    } catch (e) {
      movieDetailsModel = MovieDetailsModel();
      emit(MovieDetailsError());
    }
  }
}
