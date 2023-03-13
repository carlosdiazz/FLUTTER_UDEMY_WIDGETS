import 'package:flutter/material.dart';

class ListView1Page extends StatelessWidget {
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
  const ListView1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View1 Page'),
        ),
        body: ListView(
          children: _crarListTile(),
        ));
  }

  List<Widget> _crarListTile() {
    return opts.map((e) {
      return ListTile(
        subtitle: Text(e),
        leading: Icon(Icons.abc_outlined),
        trailing: Icon(Icons.ac_unit),
        title: Text(e),
        onTap: () {},
      );
    }).toList();
  }
}
