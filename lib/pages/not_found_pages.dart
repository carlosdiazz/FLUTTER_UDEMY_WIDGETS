import 'package:flutter/material.dart';

class NotFoundPages extends StatelessWidget {
  const NotFoundPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Not Found'),
      ),
      body: const Center(child: Text('Not Found pages')),
    );
  }
}
