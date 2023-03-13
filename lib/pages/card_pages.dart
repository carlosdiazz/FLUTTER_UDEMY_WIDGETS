import 'package:flutter/material.dart';
import 'package:componentes/widgets/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Page')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        children: const [
          CustomCardType1(titulo: 'Card 1'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
              imgUrl: 'https://images.alphacoders.com/872/872716.jpg',
              name: 'Un Paisaje Hermoso'),
          SizedBox(
            height: 20,
          ),
          CustomCardType2(
            imgUrl:
                'https://www.xtrafondos.com/wallpapers/resized/espacio-abstracto-3088.jpg?s=large',
          ),
          CustomCardType2(
            imgUrl:
                'https://www.xtrafondos.com/wallpapers/resized/astronauta-sobre-la-luna-11499.jpg?s=large',
          ),
        ],
      ),
    );
  }
}
