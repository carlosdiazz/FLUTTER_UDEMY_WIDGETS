import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderPages extends StatefulWidget {
  const SliderPages({super.key});

  @override
  State<SliderPages> createState() => _SliderPagesState();
}

class _SliderPagesState extends State<SliderPages> {
  double _sliderValue = 400;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Pages'),
      ),
      body: Column(children: [
        const AboutListTile(applicationName: 'App de Widgtes'),
        Slider.adaptive(
            value: _sliderValue,
            min: 200,
            max: 500,
            activeColor: AppTheme.primary,
            divisions: 50,
            onChanged: _sliderEnable
                ? (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null),
        Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value ?? true;
              });
            }),
        Switch(
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            }),
        CheckboxListTile(
            value: _sliderEnable,
            title: Text("Habiliar Slider"),
            onChanged: (value) {
              setState(() {
                _sliderEnable = value ?? true;
              });
            }),
        SwitchListTile.adaptive(
            title: Text("Habilitar Slider"),
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            }),
        SizedBox(
          height: 30,
        ),
        Image(
          image: NetworkImage(
              'https://i.ytimg.com/vi/ypl5ubjOu4Q/maxresdefault.jpg'),
          fit: BoxFit.contain,
          width: _sliderValue,
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1526512340740-9217d0159da9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmVydGljYWx8ZW58MHx8MHx8&w=1000&q=80'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
