import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:netflix_clone/constants/apiconstants.dart';
import 'package:netflix_clone/models/content_models.dart';


class NetflixService {
  final baseurl = Apiconstants.baseurl;
  Dio dio = Dio(BaseOptions(
    connectTimeout: Duration(seconds: 3),
  ));

  
  Future<List<Netflixmodel>> getAllNetflix() async {
    try {
      final response = await dio.get(baseurl);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data['results'];
        log('full data fetched');
        return data.map((e) => Netflixmodel.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        throw Exception('Connction error error:$e');
      } else {
        throw Exception('Server Error');
      }
    }
    return [];
  }

  Future<List<Netflixmodel>> topRated() async {
    final topRated = Apiconstants.topRated.toString();

    try {
      final response = await dio.get(topRated);
      if (response.statusCode == 200) {
        log('fetched succesfully in toprated');
        List data = response.data['results'];
        return data.map((e) => Netflixmodel.fromJson(e)).toList();
      } else {
        throw Exception('error in fetching data');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        log("connection error:$e");
        throw Exception('Check your internet connection');
      } else {
        throw Exception('Server Error:$e');
      }
    }
  }

  Future<List<Netflixmodel>> popular() async {
    final upcoming = Apiconstants.upcoming.toString();

    try {
      final response = await dio.get(upcoming);
      if (response.statusCode == 200) {
        log('fetched succesfully in upcoming');
        List data = response.data['results'];
        return data.map((e) => Netflixmodel.fromJson(e)).toList();
      } else {
        throw Exception('error in fetlching data');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        throw Exception('Check your internet connection');
      } else {
        throw Exception('Server Error:$e');
      }
    }
  }

  Future<List<Netflixmodel>> tvshows() async {
    final tvShows = Apiconstants.tvshows.toString();

    try {
      final response = await dio.get(tvShows);
      if (response.statusCode == 200) {
        log('fetched succesfully in upcoming');
        List data = response.data['results'];
        return data.map((e) => Netflixmodel.fromJson(e)).toList();
      } else {
        throw Exception('error in fetching data');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        throw Exception('Check your internet connection');
      } else {
        throw Exception('Server Error:$e');
      }
    }
  }

  Future<List<Netflixmodel>> searchUpdate({required String movie}) async {
    final search =
        'https://api.themoviedb.org/3/search/multi?api_key=d26a8dd97ecb04414d11287cd30cca91&query=$movie';
    try {
      final response = await dio.get(search);
      if (response.statusCode == 200) {
        log('fetched succesfully in upcoming');
        List data = response.data['results'];
        return data.map((e) => Netflixmodel.fromJson(e)).toList();
      } else {
        throw Exception('error in fetlching data');
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        throw Exception('Check your internet connection');
      } else if (e.type == DioExceptionType.receiveTimeout) {
        throw Exception('server error');
      }
    }
    throw Exception('no data');
  }
}