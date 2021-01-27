import 'package:flutter/material.dart';

class MyBottomSheetWidget extends StatefulWidget {
  @override
  _MyBottomSheetWidgetState createState() => _MyBottomSheetWidgetState();
}

class _MyBottomSheetWidgetState extends State<MyBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                    child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text('Hola'),
                        leading: Icon(Icons.access_alarm_rounded),
                      ),
                      ListTile(title: Text('desde ')),
                      ListTile(title: Text(' aqui')),
                    ],

                    // child: Text('Contenido de mi desplegable',
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(fontSize: 20)),
                  ),
                ));
              });
        },
        child: Text('Launch ButtonSheet'),
      ),
    ));
  }
}
