import 'package:componentes/router/app_route.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

//PROPIOS

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: AppRoute.initialRoute,
        //routes: AppRoute.routes,

        routes: AppRoute.getAppRputes(),
        onGenerateRoute: (settings) => AppRoute.onGenerateRoute(settings),
        //home: ListView1Page(),
        //home: const ListView2Page(),
        theme: AppTheme.darkTheme);
  }
}
