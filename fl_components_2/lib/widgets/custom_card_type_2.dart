import 'package:fl_components_2/theme/app_themes.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageURL;
  final String? name;
   
  const CustomCardType2({
    super.key,
    required this.imageURL,
    required this.name
  });

 

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children:  [
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: const AssetImage('assets/cargando.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 700),
          ),

          if(name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'Sin titulo')
            )
        ],
      )
    );
  }
}
