
import 'package:fl_components_2/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(name: 'paisaje1',imageURL: 'https://revistadiners.com.co/wp-content/uploads/2019/06/Koenigsegg_Agera1200x675.jpg'),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(name: null, imageURL: 'https://mott.pe/noticias/wp-content/uploads/2019/03/los-50-paisajes-maravillosos-del-mundo-para-tomar-fotos-1280x720.jpg',),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(name: 'paisaje3',imageURL: 'https://fondosmil.com/fondo/2255.jpg')

        ],
      ),
    );
  }
}

