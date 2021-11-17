import 'package:bloc/bloc.dart';
import 'package:cubit_movie/features/movie/model/movie_model.dart';
import 'package:cubit_movie/features/movie/service/movie_service.dart';
import 'package:meta/meta.dart';

part 'movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  final MovieService movieService;

  late final List<MovieModel> movieList;

  MoviesCubit(this.movieService) : super(MoviesInitial()) {
    fetchMoviesItem();
  }

  Future<void> fetchMoviesItem() async {
    emit(MoviesLoadingState());
    try {
      final searhModel = await movieService.fetchMovie(searchKey: 'titanic');
      if (searhModel.search?.isEmpty ?? false) {
        emit(MoviesEmptyState());
      } else {
        emit(MovieListState(searhModel.search!));
      }
      movieList = searhModel.search ?? [];
    } catch (e) {
      movieList = [];
      emit(MovieErrorState());
    }
  }
}
