import 'package:flutter/material.dart';

class MyStackWidget extends StatefulWidget {
  @override
  _MyStackWidgetState createState() => _MyStackWidgetState();
}

class _MyStackWidgetState extends State<MyStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        // fit: StackFit.expand,
        children: <Widget>[
          Container(
              color: Colors.red,
              child: SizedBox(
                height: 200,
                width: 200,
              )),
          Container(
            color: Colors.blue,
            child: SizedBox(
              height: 150,
              width: 150,
            ),
          )
        ],
      ),
    ));
  }
}
