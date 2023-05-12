import 'package:biblio_paucar/models/models.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
//  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;
    final String tituloLibro = movie.title.toString();
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Titutlo: ${movie.title} \n'+ 
          'Idioma:${movie.originalLanguage}'),
        )
      ),
    );
  }
}