import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Page extends StatelessWidget {
  final opts = const [
    'UNO',
    'DOS',
    'TRES',
    'CUATRO',
    'CINCO',
    'SEIS',
    'SIETE',
    'OCHO',
    'NUEVE',
    'DIEZ',
    'ONCE',
    'DOCE',
    'TRECE',
    'CATORCE',
    'QUINCE'
  ];
  const ListView2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.indigo,
          title: const Text('List View2 Page'),
        ),
        body: ListView.separated(
            itemBuilder: (_, index) => ListTile(
                  subtitle: Text(opts[index]),
                  leading: Icon(
                    Icons.abc_outlined,
                    color: AppTheme.primary,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: AppTheme.primary,
                  ),
                  title: Text(opts[index]),
                  onTap: () => {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: opts.length));
  }
}
