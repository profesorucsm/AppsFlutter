


import 'dart:convert';

import 'package:biblio_paucar/models/search_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/models.dart';



class MoviesProvider extends ChangeNotifier{

  String _apiKey = '2ac18fbfa7c14ab829339edae19d8a38';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];

  MoviesProvider(){
    print('MoviesProvider inicilizado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');

    // This example uses the Google Books API to search for books about http.
    // https://developers.google.com/books/docs/overview
    final url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
      });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    final nowPlayingResponse = NowPlayingResponse.fromRawJson(response.body);
    
    print( nowPlayingResponse.results[0].title );
    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  Future<List<Movie>>searchMovies(String query) async {
    final url = Uri.https(_baseUrl, '3/search/movie', {
      'api_key': _apiKey,
      'language': _language,
      'page': '1',
      'query':query
      });

      final response = await http.get(url);
      final searchResponse = SearchResponse.fromRawJson(response.body);
      return searchResponse.results;
  }
}