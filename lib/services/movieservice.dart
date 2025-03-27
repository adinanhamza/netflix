
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix_clone/constants/apiconstants.dart';
import 'package:netflix_clone/models/content_models.dart';

class Movieservice {

  final popularmovies = Apiconstants.getPopularMovies();
  final topratedmovies = Apiconstants.getTopRatedMovies();
  final trendingmovies = Apiconstants.getTrendingMovies();
  final tvshows = Apiconstants.getTvShows();
  final searchMovie = Apiconstants.searchMovie(); 

  Dio dio = Dio();

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
  
}