import 'package:componentes/models/menu_option.dart';
import 'package:flutter/material.dart';
import 'package:componentes/pages/pages.dart';

class AppRoute {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //todo quitar el home
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: const HomePage(),
      icon: Icons.home,
    ),
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
  ];

  static Map<String, Widget Function(BuildContext)> getAppRputes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

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
