import 'package:fl_components_2/theme/app_themes.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['item1', 'item2', 'item3', 'item4']; 
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 2'),
      ),
      body: ListView.separated(
          itemCount:options.length,
          itemBuilder: ((context, index) => ListTile(
              title: Text(options[index]),
              leading: const Icon(Icons.ac_unit, color: AppTheme.primary),
              trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primary),
              onTap: () {
                final temp = options[index];
                print(temp);
              },
            )
          ),
          separatorBuilder: ((_, __) => const Divider())
        ),

      );
  }
}