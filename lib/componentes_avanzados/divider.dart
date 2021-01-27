import 'package:flutter/material.dart';

class MyDividerWidget extends StatefulWidget {
  @override
  _MyDividerWidgetState createState() => _MyDividerWidgetState();
}

class _MyDividerWidgetState extends State<MyDividerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Expanded(
          //   child: Container(
          //     color: Colors.amber,
          //   ),
          // ),
          ListTile(
            leading: Icon(Icons.ac_unit),
          ),
          Divider(
            color: Colors.grey,
            // height: 25,
            // thickness: 4,
            // indent: 15,
            // endIndent: 15,
          ),
          ListTile(
            leading: Icon(Icons.ac_unit),
          ),
          Divider(
            color: Colors.grey,
            // height: 25,
            // thickness: 4,
            // indent: 15,
            // endIndent: 15,
          ),
        ],
      ),
    );
  }
}
