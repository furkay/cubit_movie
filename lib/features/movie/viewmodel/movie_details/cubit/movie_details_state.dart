part of 'movie_details_cubit.dart';

@immutable
abstract class MovieDetailsState {}

class MovieDetailsInitial extends MovieDetailsState {}

class MovieDetailsLoading extends MovieDetailsState {}

class MovieDetailsError extends MovieDetailsState {}

class MovieDetailsEmpty extends MovieDetailsState {}

class MovieDetailsItem extends MovieDetailsState {
  final MovieDetailsModel movieDetailsModel;

  MovieDetailsItem(this.movieDetailsModel);
}
