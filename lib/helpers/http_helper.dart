import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/movie_model.dart';

class HttpHelper {

    static List<Movie> movies =[];

    static Future<List<Movie>> getMovies() async{

    Uri path = Uri.https('api.themoviedb.org', '3/movie/popular',
        {'api_key': 'eb03df251074313f6e24c705f23a1cdc'});
    var response = await http.get(path);
    var data = jsonDecode(response.body);
    var fullMovies = data['results'];
    for (var item in fullMovies){
      movies.add(Movie(item['id'], item['title'], item['overview'],item['vote_average'],item['poster_path']));
    }
    return movies;
  }
}