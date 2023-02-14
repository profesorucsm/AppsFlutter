import 'package:flutter/material.dart';

//import 'package:contador_app/screens/home_screen.dart';
import 'package:contador_app/screens/counter_screen.dart';

void main(){
  runApp(const MiApp());
}

class MiApp extends StatelessWidget{
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      //home: HomeScreen()
      home: CounterScreen()
    );
  }

}