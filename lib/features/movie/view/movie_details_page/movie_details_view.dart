import 'package:cubit_movie/features/movie/view/movie_details_page/view_extension/movie_details_view_extension.dart';
import 'package:cubit_movie/features/movie/viewmodel/movie_details/cubit/movie_details_cubit.dart';

import '../../../../core/constants/api_constants.dart';
import '../../service/movie_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsView extends StatelessWidget {
  final String imdbID;
  const MovieDetailsView({Key? key, required this.imdbID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieDetailsCubit(
          MovieService(ApiConstants.instance.dio),
          imdbID: imdbID),
      child: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: (state is MovieDetailsItem)
                  ? Text(state.movieDetailsModel.title ?? '')
                  : const SizedBox(),
            ),
            body: buildMovieDetails(state),
          );
        },
      ),
    );
  }

  Widget buildMovieDetails(MovieDetailsState movieDetailsState) {
    if (movieDetailsState is MovieDetailsItem) {
      return movieDetailsState.buildWidget;
    } else if (movieDetailsState is MovieDetailsInitial) {
      return movieDetailsState.buildWidget;
    } else if (movieDetailsState is MovieDetailsLoading) {
      return movieDetailsState.buildWidget;
    } else if (movieDetailsState is MovieDetailsError) {
      return movieDetailsState.buildWidget;
    } else if (movieDetailsState is MovieDetailsEmpty) {
      return movieDetailsState.buildWidget;
    }
    return const SizedBox();
  }
}
