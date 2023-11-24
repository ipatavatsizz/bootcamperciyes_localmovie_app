import 'package:bootcamperciyes_localmovie_app/product/model/movie_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  MovieCard(
    this.data, {
    super.key,
  });

  final Movie data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: LinearBorder(),
      elevation: 5,
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: CachedNetworkImage(
              filterQuality: FilterQuality.high,
              imageUrl: data.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  data.title.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.w300),
                ),
                Divider(color: Colors.black, thickness: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
