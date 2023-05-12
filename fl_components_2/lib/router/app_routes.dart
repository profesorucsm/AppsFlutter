import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'home', screen: const HomeScreen(), name: 'Home', icon: Icons.home_filled),
    MenuOption(route: 'listView1', screen: const ListView1Screen(), name: 'List View 1', icon: Icons.list_alt),
    MenuOption(route: 'listView2', screen: const ListView2Screen(), name: 'List View 2', icon: Icons.list),
    MenuOption(route: 'alert', screen: const AlertScreen(), name: 'Alert', icon: Icons.ring_volume),
    MenuOption(route: 'card', screen: const CardScreen(), name: 'Card', icon: Icons.card_membership),
    MenuOption(route: 'avatar', screen: const AvatarScreen(), name: 'Avatar', icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', screen: const AnimatedScreen(), name: 'Animated', icon: Icons.play_circle_outline_rounded),
    MenuOption(route: 'inputs', screen: const InputScreen(), name: 'Text Inputs', icon: Icons.input_rounded),
    MenuOption(route: 'slider', screen: const SliderScreen(), name: 'Slider && Checks', icon: Icons.slow_motion_video_rounded),
    MenuOption(route: 'listviewbuilder', screen: const ListViewBuilderScreen(), name: 'InfiniteScroll & Pull to refresh', icon: Icons.build_circle_outlined),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home': ( BuildContext context ) => const HomeScreen() });

    for(final option in menuOptions){
      appRoutes.addAll({option.route: ( BuildContext context ) => option.screen });
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home': ( BuildContext context ) => const HomeScreen(),
  //       'listView1': ( BuildContext context ) => const ListView1Screen(),
  //       'listView2': ( BuildContext context ) => const ListView2Screen(),
  //       'alert': ( BuildContext context ) => const AlertScreen(),
  //       'card': ( BuildContext context ) => const CardScreen(),
  // };

  static Route<dynamic>? Function(RouteSettings)? onGenerateRoute = (settings) {
        print(settings);
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
  };

}

