import 'package:cubit_movie/features/movie/viewmodel/movie_details/cubit/movie_details_cubit.dart';

import '../movie_details_content.dart';
import 'package:flutter/material.dart';

extension MovieDetailsItemExtension on MovieDetailsItem {
  Widget get buildWidget {
    return MovieDetailsContent(movieDetailsModel: movieDetailsModel);
  }
}

extension MovieDetailsLoadingExtension on MovieDetailsLoading {
  Widget get buildWidget {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

extension MovieDetailsInitialExtension on MovieDetailsInitial {
  Widget get buildWidget {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

extension MovieDetailsErrorExtension on MovieDetailsError {
  Widget get buildWidget {
    return const SizedBox();
  }
}

extension MovieDetailsEmptyExtension on MovieDetailsEmpty {
  Widget get buildWidget {
    return const SizedBox();
  }
}
