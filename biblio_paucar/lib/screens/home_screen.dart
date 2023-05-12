import 'package:biblio_paucar/providers/movies_provider.dart';
import 'package:biblio_paucar/search/search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
//  const HomeScreen({super.key});

  final List<String> items = ['Uno','Dos','Tres'];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _valorTextForm = '';
  String _valorDropDownMenu = 'Primero';
  List<String> _DropDownMenuItems = ['Primero','Segundo','Tercero'];

  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);
    print(moviesProvider.onDisplayMovies);

    return Scaffold(
      appBar: AppBar(
        title: Text('Biblioteca Bahá\'í'),

        actions: <Widget>[
          IconButton(
            tooltip: 'Opciones',
            icon: const Icon(Icons.person),
            onPressed: () {
              // handle the press
            },
          ),
        ],

      ),

      body: Column(
        children:  <Widget>[
          Row(
            children:  <Widget>[
              IconButton(
                tooltip: 'Buscar Libro',
                icon: Icon(Icons.search),
                onPressed: () => showSearch(context: context, delegate: MovieSearchDelegate())
              ),
              IconButton(
                tooltip: 'Gestionar préstamo',
                icon: Icon(Icons.book),
                onPressed: () {
                  // handle the press
                },
              )
            ]
          ),

          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ingrese el valor a buscar'
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return 'Ingresar un valor';
                    }
                    return null;
                  },
                  onChanged: (value){
                    _valorTextForm = value;
                  },
                ),

                SizedBox(height: 16.0),

                DropdownButtonFormField(
                  value: _valorDropDownMenu,
                  decoration: InputDecoration(
                    labelText: 'Elija un valor',
                  ),
                  items: _DropDownMenuItems
                    .map(
                      (option) => DropdownMenuItem(
                        value: option,
                        child: Text(option)
                      )
                    )
                    .toList(),
                  onChanged: (value){
                    _valorDropDownMenu = value.toString();
                  }
                ),

                SizedBox(height: 16.0),

                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print('Valor Texto: $_valorTextForm');
                      print('Valor Menu: $_valorDropDownMenu');
                    };
                    
                  },
                  child: Text('Buscar')
                )
              ],
            )
          ),

          Expanded(
            child: ListView.builder(
              itemCount: moviesProvider.onDisplayMovies.length,//items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  
                  title: Text(moviesProvider.onDisplayMovies[index].title), //Text(items[index]),
                  onTap: (){
                    Navigator.pushNamed(context, 'details',arguments: moviesProvider.onDisplayMovies[index]); //items[index]
                  },
                );
              },
              
            ),
          )

        ],
      ),
      

      // Container(
      //   child: const Center(
      //   child: Text('Home Screen')
      //   ),
      // )
    );
  }
}