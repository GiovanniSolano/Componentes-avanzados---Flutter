import 'package:flutter/material.dart';

class MyTooltipWidget extends StatefulWidget {
  @override
  _MyTooltipWidgetState createState() => _MyTooltipWidgetState();
}

class _MyTooltipWidgetState extends State<MyTooltipWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tooltip(
                  message: ('Icono de alarma'),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.access_time))),
              Tooltip(
                  message: ('Icono de nieve'),
                  child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit))),
              Tooltip(
                  message: ('Icono de translate'),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.g_translate))),
            ],
          ),
        ),
      ),
    );
  }
}
