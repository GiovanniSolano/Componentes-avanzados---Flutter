import 'package:flutter/material.dart';

class MyStepperWidget extends StatefulWidget {
  @override
  _MyStepperWidgetState createState() => _MyStepperWidgetState();
}

class _MyStepperWidgetState extends State<MyStepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stepper(
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep >= 3) return;
            setState(() {
              _currentStep++;
            });
          },
          onStepCancel: () {
            if (_currentStep <= 0) return;
            setState(() {
              _currentStep--;
            });
          },
          steps: [
            Step(
                title: Text('Introducción'),
                content: SizedBox(
                  width: 110,
                  height: 110,
                )),
            Step(
                title: Text('Desarrollo'),
                content: SizedBox(
                  width: 110,
                  height: 110,
                )),
            Step(
                title: Text('Diseño'),
                content: SizedBox(
                  width: 110,
                  height: 110,
                )),
            Step(
                title: Text('Conclusión'),
                content: SizedBox(
                  width: 110,
                  height: 110,
                )),
          ],
        ),
      ),
    );
  }
}
