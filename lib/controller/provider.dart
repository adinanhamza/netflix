import 'package:flutter/widgets.dart';
import 'package:netflix_clone/models/content_models.dart';
import 'package:netflix_clone/services/movieservice.dart';

class Movieprovider  extends ChangeNotifier{

final movieservice = Movieservice();

TextEditingController searchcontroller =  TextEditingController();

List<Moviemodel> popular = [];
List <Moviemodel> trending = [];
List <Moviemodel> toprated= [];
List <Moviemodel> tvshows = [];
List <Moviemodel> movies = [];
List <Moviemodel> searchlist = [];

bool isloading = false;



}