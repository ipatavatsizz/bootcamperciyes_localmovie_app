import 'package:bootcamperciyes_localmovie_app/feature/home/widget/movie_card.dart';
import 'package:bootcamperciyes_localmovie_app/product/service/api_service.dart';
import 'package:bootcamperciyes_localmovie_app/product/widget/movie_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MovieAppBar(),
      body: SafeArea(
        child: FutureBuilder(
          future: ApiService.getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                if (!snapshot.hasData) {
                  return Center(child: Text('Service hasn\'t sent any data.'));
                }
                final movies = snapshot.data!.movies;

                return ScrollConfiguration(
                  behavior:
                      MaterialScrollBehavior().copyWith(overscroll: false),
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.sizeOf(context).aspectRatio,
                    children: movies.map((data) => MovieCard(data)).toList(),
                  ),
                );
              default:
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 10),
                      Text('Loading...'),
                    ],
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
