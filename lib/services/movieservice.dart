<<<<<<< HEAD

import 'dart:developer';

import 'package:dio/dio.dart';
=======
<<<<<<< HEAD
>>>>>>> df99444ce77b907a24760ca8ef9394d45c17c74d
import 'package:netflix_clone/constants/apiconstants.dart';
import 'package:netflix_clone/models/content_models.dart';

class Movieservice {

  final popularmovies = Apiconstants.getPopularMovies();
  final topratedmovies = Apiconstants.getTopRatedMovies();
  final trendingmovies = Apiconstants.getTrendingMovies();
  final tvshows = Apiconstants.getTvShows();
  final searchMovie = Apiconstants.searchMovie(); 

  Dio dio = Dio();

<<<<<<< HEAD
Future<List<Moviemodel>>  popularmovie()async{
try {
  final response = await dio.get(popularmovies);
  if(response.data == 200){
    log('request successfully ${response.statusMessage  }');
    return (response.data as List).map((movies)=> Moviemodel.fromjson(movies)).toList();
  }else{
   log('error : ${response.statusCode} - ${response.statusMessage}');
  }
} catch (e) {
  throw Exception('error :$e');
}
return [];
}
  
=======
  
=======
class Movieservice {
  
>>>>>>> d72e3fc4e4266a8384cf248828c420cb08ce13ec
>>>>>>> df99444ce77b907a24760ca8ef9394d45c17c74d
}