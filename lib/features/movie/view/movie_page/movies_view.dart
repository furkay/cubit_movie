import 'package:cubit_movie/features/movie/viewmodel/movies/cubit/movies_cubit.dart';

import '../../../../core/constants/api_constants.dart';
import '../../service/movie_service.dart';
import 'view_extension/movies_view_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesCubit(MovieService(ApiConstants.instance.dio)),
      child: Scaffold(
          appBar: AppBar(),
          body: BlocConsumer<MoviesCubit, MoviesState>(
            listener: (context, state) {
              if (state is MovieErrorState) {
                showAboutDialog(context: context);
              }
            },
            builder: (context, state) {
              if (state is MoviesLoadingState) {
                return state.buildWidget;
              } else if (state is MoviesEmptyState) {
                return state.buildWidget;
              } else if (state is MovieListState) {
                return state.buildWidget;
              }
              return const SizedBox();
            },
          )),
    );
  }
}
