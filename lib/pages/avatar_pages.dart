import 'package:flutter/material.dart';

class AvatarPages extends StatelessWidget {
  const AvatarPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Pages'),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CircleAvatar(
              child: Text('GC'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/1477035761421721600/-Nl9zL7k_400x400.jpg'),
          maxRadius: 100,
        ),
      ),
    );
  }
}
