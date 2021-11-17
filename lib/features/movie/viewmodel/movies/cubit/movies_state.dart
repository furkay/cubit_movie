part of 'movies_cubit.dart';

@immutable
abstract class MoviesState {}

class MoviesInitial extends MoviesState {}

class MoviesLoadingState extends MoviesState {}

class MoviesEmptyState extends MoviesState {}

class MovieErrorState extends MoviesState {}

class MovieListState extends MoviesState {
  final List<MovieModel> movieList;
  MovieListState(this.movieList);
}
