import 'package:biblio_paucar/providers/movies_provider.dart';
import 'package:biblio_paucar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (_) => MoviesProvider(), lazy: false,)
      ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Biblio Paucar',
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Material App Bar'),
      //   ),
      //   body: const Center(
      //     child: Text('Hello World - MCSV'),
      //   ),
      // ),
      initialRoute: 'home',
      routes: {
        'home' :(_) => HomeScreen(),
        'details' :(_) => DetailsScreen()
      },

      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.green
        )
      )
    );
  }
}