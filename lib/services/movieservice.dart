import 'package:netflix_clone/constants/apiconstants.dart';

class Movieservice {

  final popularmovies = Apiconstants.getPopularMovies();
  final topratedmovies = Apiconstants.getTopRatedMovies();
  final trendingmovies = Apiconstants.getTrendingMovies();
  final tvshows = Apiconstants.getTvShows();
  final searchMovie = Apiconstants.searchMovie();


  Future <List<>>
}