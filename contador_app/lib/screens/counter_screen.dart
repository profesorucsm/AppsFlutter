import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int counter = 0;

  void decrease(){
    counter--;
    setState(() {});
  }

  void reset(){
    counter=0;
    setState(() {});
  }
  
  void increase(){
    counter++;
    setState(() {});
  }


  
  @override
  Widget build(BuildContext context) {  

    const TextStyle tamTextStyle20 = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterScreen"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Numero de clicks",style: tamTextStyle20),
            Text("$counter", style: tamTextStyle20)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        decreaseFn:decrease,
        resetFn:reset,
        increaseFn:increase),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function decreaseFn;
  final Function resetFn;
  final Function increaseFn;
 
  const CustomFloatingActions({
    Key? key,
    required this.decreaseFn,
    required this.resetFn,
    required this.increaseFn
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: ()=>decreaseFn(),
          child: const Icon(Icons.minimize_outlined),
        ),

        //const SizedBox(width:20),

        FloatingActionButton(
          onPressed: ()=>resetFn(),
          child:Icon(Icons.motion_photos_on_rounded),
        ),

        //const SizedBox(width:20),

        FloatingActionButton(  
          onPressed: ()=>increaseFn(),
          child:Icon(Icons.add),
        ),
      ],
    );
  }
}