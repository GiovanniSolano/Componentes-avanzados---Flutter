import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySliderWidget extends StatefulWidget {
  @override
  _MySliderWidgetState createState() => _MySliderWidgetState();
}

class _MySliderWidgetState extends State<MySliderWidget> {
  double _currentSliderValue = 10;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Slider(
            value: _currentSliderValue,
            min: 0,
            max: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double valueIn) {
              setState(() {
                _currentSliderValue = valueIn;
              });
            },
          ),
          Text('${_currentSliderValue.round()}')
        ],
      )),
    );
  }
}
