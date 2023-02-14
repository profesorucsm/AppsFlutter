import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    int cont = 0;

    const TextStyle tamTextStyle20 = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Numero de clicks",style: tamTextStyle20),
            Text("$cont", style: tamTextStyle20)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cont++;
          print("Hola Mundo: $cont");
        },child:const Icon(Icons.add))
    );
  }

}