import 'package:fl_components_2/theme/app_themes.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['item1', 'item2', 'item3', 'item4']; 
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(
        children:  [

          ...options.map((e) => 
            ListTile(
              title: Text(e),
              leading: const Icon(Icons.ac_unit, color: AppTheme.primary),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
            )
          ).toList()
          
        ],
      )
    );
  }
}