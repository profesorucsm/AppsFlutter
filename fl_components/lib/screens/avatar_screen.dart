import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mario Santillana'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right : 5),
            child: CircleAvatar(              
              backgroundColor: Colors.red[900],
              child: const Text('MS'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/007/420/080/non_2x/avatar-gray-haired-man-with-mustache-wearing-glasses-nice-character-profile-of-a-pensioner-grandfather-for-the-design-of-thematic-forums-sites-social-services-illustration-flat-vector.jpg'),
         )
      ),
    );
  }
}