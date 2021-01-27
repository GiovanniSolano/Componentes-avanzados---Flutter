import 'package:flutter/material.dart';

class MyChipWidget extends StatefulWidget {
  @override
  _MyChipWidgetState createState() => _MyChipWidgetState();
}

class _MyChipWidgetState extends State<MyChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
            labelPadding: EdgeInsets.all(10),
            elevation: 15,
            avatar: CircleAvatar(
                backgroundColor: Colors.black45,
                child: Text('M', style: TextStyle(color: Colors.white))),
            label: Text('Música')),
      ),
    );
  }
}
