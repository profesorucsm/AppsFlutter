
import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_themes.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.ac_unit,color: AppTheme.primary,),
            title: Text('Soy una tarjeta'),
            subtitle: Text("245234 52345 2542 3452 345234542 345423454 2345423 45423454234454 2345 42345 42345"),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  //style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){},
                  //style: TextButton.styleFrom(foregroundColor: AppTheme.primary),
                  child: const Text('OK')
                )
              ],),
          )

        ],
      ),
    );
  }
}