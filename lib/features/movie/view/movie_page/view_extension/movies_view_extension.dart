import 'package:cubit_movie/features/movie/viewmodel/movies/cubit/movies_cubit.dart';

import '../movie_list_view_widget.dart';
import 'package:flutter/material.dart';

extension MovieListStateExtension on MovieListState {
  Widget get buildWidget {
    return MovieListViewWidget(movieList: movieList);
  }
}

extension MovieLoadingExtension on MoviesLoadingState {
  Widget get buildWidget {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

extension MovieEmptyExtension on MoviesEmptyState {
  Widget get buildWidget {
    return const Center(
      child: Text('This widget is Empty!'),
    );
  }
}
