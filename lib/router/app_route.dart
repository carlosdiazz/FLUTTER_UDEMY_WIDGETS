import 'package:componentes/models/menu_option.dart';
import 'package:flutter/material.dart';
import 'package:componentes/pages/pages.dart';

class AppRoute {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //todo quitar el home
    //MenuOption(
    //  route: 'home',
    //  name: 'Home Screen',
    //  screen: const HomePage(),
    //  icon: Icons.home,
    //),
    MenuOption(
      route: 'listview1',
      name: 'List View1',
      screen: const ListView1Page(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'listview2',
      name: 'List View2',
      screen: const ListView2Page(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert',
      screen: const AlertPage(),
      icon: Icons.alarm,
    ),
    MenuOption(
      route: 'card',
      name: 'Cards',
      screen: const CardPage(),
      icon: Icons.card_travel,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Avatar',
      screen: const AvatarPages(),
      icon: Icons.person_2,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Pages',
      screen: const AnimatedPages(),
      icon: Icons.animation,
    ),
    MenuOption(
      route: 'inputd',
      name: 'Input Fields Pages',
      screen: const InputFieldPages(),
      icon: Icons.input,
    ),
    MenuOption(
      route: 'sliders',
      name: 'Sliders Page',
      screen: const SliderPages(),
      icon: Icons.sign_language,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'List View Builder Page',
      screen: const ListViewBuilderPages(),
      icon: Icons.build_circle,
    )
  ];

  static Map<String, Widget Function(BuildContext)> getAppRputes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomePage()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //  'home': (context) => const HomePage(),
  //  'listview1': (context) => const ListView1Page(),
  //  'listview2': (context) => const ListView2Page(),
  //  'alert': (context) => const AlertPage(),
  //  'card': (context) => const CardPage(),
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const NotFoundPages());
  }
}
