import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPages extends StatefulWidget {
  const AnimatedPages({super.key});

  @override
  State<AnimatedPages> createState() => _AnimatedPagesState();
}

class _AnimatedPagesState extends State<AnimatedPages> {
  double _width = 50;
  double _height = 50;
  double border = 20;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(2);
  Color _color = Colors.red;

  void cambiarValores() {
    setState(() {
      final random = Random();
      _width = random.nextInt(300).toDouble() + 50;
      _height = random.nextInt(300).toDouble() + 50;
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Page'),
      ),
      body: Center(
        child: AnimatedContainer(
          //color: Colors.red,
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: (Icon(Icons.play_arrow, size: 50)),
          onPressed: () => cambiarValores()),
    );
  }
}
