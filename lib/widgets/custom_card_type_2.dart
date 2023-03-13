import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, required this.imgUrl, this.name = ''});
  final String imgUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //shadowColor: AppTheme.primary.withOpacity(0.3),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('data/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
          ),
          if (name != '')
            Container(
              child: Text(this.name),
              padding: const EdgeInsets.only(right: 20, top: 20, bottom: 20),
            )
        ],
      ),
    );
  }
}
