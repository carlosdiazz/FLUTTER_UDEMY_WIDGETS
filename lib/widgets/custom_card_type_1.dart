import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key, required this.titulo});

  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Icon(
            Icons.phone,
            color: AppTheme.primary,
          ),
          title: Text(titulo),
          subtitle: Text(
              'In veniam aute fugiat voluptate id ea dolore est culpa pariatur ut esse. Pariatur ad id proident exercitation aute aliquip irure duis eiusmod irure amet ut. Anim culpa qui pariatur laboris est. Quis excepteur ea cillum anim id deserunt ex sint velit proident voluptate adipisicing consectetur ullamco. Laboris nulla ipsum ipsum dolor.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              TextButton(
                onPressed: () {},
                child: const Text('OK'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
