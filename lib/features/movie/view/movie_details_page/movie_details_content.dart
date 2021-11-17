import 'package:auto_size_text/auto_size_text.dart';
import 'package:cubit_movie/core/constants/image_constants.dart';
import '../../model/movie_details_model.dart';
import 'package:flutter/material.dart';

class MovieDetailsContent extends StatelessWidget {
  final MovieDetailsModel movieDetailsModel;
  const MovieDetailsContent({Key? key, required this.movieDetailsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    buildImage(),
                    if (movieDetailsModel.year != null) buildYear(context),
                  ],
                ),
              ),
            ),
            if (movieDetailsModel.genre != null)
              Expanded(
                child: buildGenre(context),
              ),
          ],
        ),
        if (movieDetailsModel.plot != null) buildPlot(context),
      ],
    );
  }

  Padding buildPlot(context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 40.0,
        right: 40.0,
      ),
      child: Center(
        child: AutoSizeText(
          movieDetailsModel.plot!,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
      ),
    );
  }

  Padding buildYear(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        movieDetailsModel.year!,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.start,
      ),
    );
  }

  Padding buildImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 5),
      child: CircleAvatar(
        radius: 60,
        foregroundImage: NetworkImage(
          movieDetailsModel.poster ?? ImageConstants.instance.imagePlaceHolder,
        ),
      ),
    );
  }

  Container buildGenre(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      margin: const EdgeInsets.only(right: 20),
      child: Wrap(
        children: [
          ...genreList().map(
            (genre) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Chip(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.all(4),
                label: Text(
                  genre,
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<String> genreList() => movieDetailsModel.genre!.split(',');
}
