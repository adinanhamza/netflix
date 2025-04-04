
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
  log('fetchingg ... popular');
try {
  final response = await dio.get(popularmovies);
  if(response.statusCode == 200){
    log('request successfully popullar${response.statusMessage}');
  final List data =  response.data['results'];
  log(data.toString());
    return data.map((e) => Moviemodel.fromjson(e)).toList();
  }else{
   log('error : ${response.statusCode} - ${response.statusMessage}');
  }
} catch (e) {
  throw Exception('error :$e');
}
return [];
}

   Future<List<Moviemodel>> tvshow() async {
    Dio dio = Dio();

    try {
      final response = await dio.get(tvshows);
      if (response.statusCode == 200) {
        log("Request successful: ${response.statusMessage}");
        final List data = response.data['results'];
        return data.map((movies)=> Moviemodel.fromjson(movies)).toList();
      } else {
        log("Error: ${response.statusCode} - ${response.statusMessage}");
      }
    } catch (e) {
      log("Exception: $e");
    }

    return [];
  }
    Future<List<Moviemodel>> movies() async {
    Dio dio = Dio();

    try {
      final response = await dio.get(popularmovies);
      if (response.statusCode == 200) {
        log("Request successful: ${response.statusMessage}");
        final List data = response.data['results'];
        return data.map((movies)=> Moviemodel.fromjson(movies)).toList();
      } else {
        log("Error: ${response.statusCode} - ${response.statusMessage}");
      }
    } catch (e) {
      log("Exception: $e");
    }
    return [];
  }

    Future<List<Moviemodel>> trendingMovie() async {
    Dio dio = Dio();

    try {
      final response = await dio.get(trendingmovies);
      if (response.statusCode == 200) {
        log("Request successful: ${response.statusMessage}");
        final List data = response.data['results'];
        return data.map((movies)=> Moviemodel.fromjson(movies)).toList();
      } else {
        log("Error: ${response.statusCode} - ${response.statusMessage}");
      }
    } catch (e) {
      log("Exception: $e");
    }

    return [];
  }
   Future<List<Moviemodel>> upcomingMovie() async {
     
    Dio dio = Dio();

    try {
      final response = await dio.get(topratedmovies);
      if (response.statusCode == 200) {
        log("Request successful: ${response.statusMessage}");
        final List data = response.data['results'];
        return data.map((movies) => Moviemodel.fromjson(movies)).toList();
      } else {
        log("Error: ${response.statusCode} - ${response.statusMessage}");
      }
    } catch (e) {
      log("Exception: $e");
    }

    return [];
  }


  Future<List<Moviemodel>> searchData({required String search}) async {
    String url =
        '$searchMovie$search';
    Dio dio = Dio();

    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        log("Request successful: ${response.statusMessage}");
        final List data = response.data['results'];
        return data.map((movies) => Moviemodel.fromjson(movies)).toList();
      } else {
        log("Error: ${response.statusCode} - ${response.statusMessage}");
      }
    } catch (e) {
      log("Exception: $e");
    }

    return [];
  }

  
}