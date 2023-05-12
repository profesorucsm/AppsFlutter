

import 'package:biblio_paucar/providers/movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';

class MovieSearchDelegate extends SearchDelegate{

  @override
  // TODO: implement searchFieldLabel
  String? get searchFieldLabel => 'buscar película';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        }
      );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Widget Results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    
    Widget _emptyContainer(){
      return Container(
        child: Center(
          child: Icon(
            Icons.book_online_outlined,
            color: Colors.black38,
            size: 200
          ),
        ),
      );
    }

    if( query.isEmpty)
      return _emptyContainer();

    final moviesProvider = Provider.of<MoviesProvider>(context, listen:false);

    return FutureBuilder(
      future: moviesProvider.searchMovies(query),
      builder: (_, AsyncSnapshot <List<Movie>>snapshot){
        if(!snapshot.hasData)
          return _emptyContainer();

        final movies = snapshot.data!;
        print(query);

        return ListView.builder(
          itemCount: movies.length,
          itemBuilder: (_,int index) => _MovieItem(movies[index])
        );
      }
    );
  }
   
}

class _MovieItem extends StatelessWidget {

  final Movie movie;
  const _MovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(movie.title),
      onTap: () {
        //print(movie.title);
        Navigator.pushNamed(context, 'details', arguments:movie);
      },
    );
  }
}
