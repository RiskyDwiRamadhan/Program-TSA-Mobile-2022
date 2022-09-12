import 'package:flutter/material.dart';
import 'package:flutter_movies/server/http_service.dart';

// import 'movie_detail.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  late int moviesCount;
  late List movies;
  late HttpService service;
  bool _isLoading = true;

  Future initialize() async {
    service.getPopularMovies().then((value) => {
          setState(() {
            movies = value!;
            moviesCount = movies.length;
            _isLoading = false;
          })
        });
  }

  @override
  void initState() {
    service = HttpService();
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Movies"),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: (moviesCount == null) ? 0 : moviesCount,
              itemBuilder: (context, int pos) {
                return Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: ListTile(
                    title: Text(movies[pos].title),
                    subtitle:
                        Text('Rating: ' + movies[pos].voteAverage.toString()),
                    // onTap: (){
                    //   MaterialPageRoute route = MaterialPageRoute(
                    //     builder: (_) => MovieDetail(movie: movies[pos])
                    //   );
                    //   Navigator.push(context, route);
                    // },
                  ),
                );
              },
            ),
    );
  }
}
