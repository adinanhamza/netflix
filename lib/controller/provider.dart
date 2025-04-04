import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/content_models.dart';
import 'package:netflix_clone/services/movieservice.dart';

class movieProvider extends ChangeNotifier {
  TextEditingController serchCtrl = TextEditingController();
  List<Moviemodel> TrendingMovie = [];
  List<Moviemodel> popularMovie = [];
  List<Moviemodel> topRated = [];
  List<Moviemodel> serchList = [];
  List<Moviemodel> tvList = [];
  List<Moviemodel> movies = [];

  bool isLodding = false;
  Movieservice movieServices = Movieservice();

  void tvshows() async {
    tvList = await movieServices.tvshow();
    if (tvList.isNotEmpty) {
      log("tv get success");
      isLodding = true;
    } else {
      log("error");
    }
    notifyListeners();
  }

  void movie() async {
    movies = await movieServices.movies();
    if (movies.isNotEmpty) {
      log("movies get success");
      isLodding = true;
    } else {
      log("error");
    }
    notifyListeners();
  }

  void popular() async {
    popularMovie = await movieServices.popularmovie();
    if (popularMovie.isNotEmpty) {
      log("popular get success");
    } else {
      log("error");
    }
    notifyListeners();
  }

  void upcoming() async {
    topRated = await movieServices.upcomingMovie();
    if (topRated.isNotEmpty) {
      log("toprated get success");
    } else {
      log("error");
    }
    notifyListeners();
  }

  void trending() async {
    TrendingMovie = await movieServices.trendingMovie();
    if (TrendingMovie.isNotEmpty) {
      log("trending get success.......");
      isLodding = true;
    } else {
      log("error");
      isLodding = false;
    }
    notifyListeners();
  }

  void serchMovie() async {
    try {
      serchList = await movieServices.searchData(search: serchCtrl.text);
      if (serchList.isNotEmpty) {
        isLodding = true;
      } else {
        isLodding = false;
      }
    } catch (e) {
      log("$e");
    }
    if (serchList.isNotEmpty) {
      print("search data fetch sucess");
    } else {
      print("error search");
    }
    notifyListeners();
  }
}