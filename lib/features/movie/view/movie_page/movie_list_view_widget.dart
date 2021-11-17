import 'package:cubit_movie/core/constants/image_constants.dart';

import '../../model/movie_model.dart';
import '../movie_details_page/movie_details_view.dart';
import 'package:flutter/material.dart';

class MovieListViewWidget extends StatelessWidget {
  final List<MovieModel> movieList;
  const MovieListViewWidget({Key? key, required this.movieList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        return MovieCard(movie: movieList[index]);
      },
    );
  }
}

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (movie.imdbID == null) return;

        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MovieDetailsView(imdbID: movie.imdbID!)));
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
              foregroundImage: NetworkImage(
                  movie.poster ?? ImageConstants.instance.imagePlaceHolder)),
          title: Text(movie.title ?? ''),
        ),
      ),
    );
  }
}
