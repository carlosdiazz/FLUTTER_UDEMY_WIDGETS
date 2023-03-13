//import 'package:componentes/pages/pages.dart';
import 'package:componentes/models/menu_option.dart';
import 'package:componentes/router/app_route.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(AppRoute.menuOptions[index].name),
                leading: Icon(AppRoute.menuOptions[index].icon,
                    color: AppTheme.primary),
                onTap: () {
                  Navigator.pushNamed(
                      context, AppRoute.menuOptions[index].route);
                  //final route =
                  //    MaterialPageRoute(builder: (context) => ListView1Page());
                  //Navigator.push(context, route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoute.menuOptions.length),
    );
  }
}
