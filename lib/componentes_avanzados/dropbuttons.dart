import 'package:flutter/material.dart';

class MyDropButtonsWidget extends StatefulWidget {
  @override
  _MyDropButtonsWidgetState createState() => _MyDropButtonsWidgetState();
}

enum SelectorOptions { option1, option2, option3, option4 }

class _MyDropButtonsWidgetState extends State<MyDropButtonsWidget> {
  // Crear una variable donde indicará el valor actual de nuestro DropDownButton
  String dropdowncurrentvalue = "Opción 1";
  SelectorOptions _selectorOptions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Drop Buttons')),
        body: Column(
          children: [
            PopupMenuButton<SelectorOptions>(
              onSelected: (SelectorOptions result) {
                setState(() {
                  _selectorOptions = result;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SelectorOptions>>[
                const PopupMenuItem<SelectorOptions>(
                  value: SelectorOptions.option1,
                  child: Text('Option 1'),
                ),
                const PopupMenuItem<SelectorOptions>(
                  value: SelectorOptions.option2,
                  child: Text('Option 2'),
                ),
                const PopupMenuItem<SelectorOptions>(
                  value: SelectorOptions.option3,
                  child: Text('Option 3'),
                ),
                const PopupMenuItem<SelectorOptions>(
                  value: SelectorOptions.option4,
                  child: Text('Option 4'),
                ),
              ],
            )
          ],
        ));
  }
}

// class _MyDropButtonsWidgetState extends State<MyDropButtonsWidget> {
//   // Crear una variable donde indicará el valor actual de nuestro DropDownButton
//   String dropdowncurrentvalue = "Opción 1";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Drop Buttons')),
//         body: Center(
//           child: DropdownButton(
//               // 2. Rellenar la lista de opcione s amostrar en el desplegable
//               items: <String>["Opción 1", "Opción 2", "Opción 3"]
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//               // 3. Personalizar la vista
//               icon: Icon(Icons.access_alarms),
//               iconSize: 15,
//               elevation: 16,
//               underline: Container(height: 3, color: Colors.blue),
//               style: TextStyle(color: Colors.black),
//               // 4. Actualizar el valor que se ha asignado
//               value: dropdowncurrentvalue,
//               onChanged: (String valueIn) {
//                 setState(() {
//                   dropdowncurrentvalue = valueIn;
//                 });
//               }),
//         ));
//   }
// }
