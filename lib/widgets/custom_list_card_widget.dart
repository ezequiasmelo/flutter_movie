import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/pages/details_page.dart';
import 'package:flutter_movie/core/utils/apis.utils.dart';

import '../models/movies_model.dart';

class CustomListCardWidget extends StatelessWidget {
  final Movie movie;

  const CustomListCardWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailsPage(movie: movie),
              fullscreenDialog: true,
            ),
          );
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: Hero(
                  tag: movie.id,
                  child: CachedNetworkImage(
                    progressIndicatorBuilder: (context, url, progress) =>
                        CircularProgressIndicator.adaptive(),
                    imageUrl: API.REQUEST_IMG(movie.posterPath),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title,
                        style: Theme.of(context).textTheme.headline6,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                      Spacer(),
                      Text('Popularidade: ${movie.popularity.toString()}'),
                      SizedBox(height: 10),
                      Text('Votos: ${movie.voteAverage.toString()}'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
