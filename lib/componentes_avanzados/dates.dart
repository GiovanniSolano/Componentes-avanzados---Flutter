import 'package:flutter/material.dart';

class MyDatesWidget extends StatefulWidget {
  @override
  _MyDatesWidgetState createState() => _MyDatesWidgetState();
}

class _MyDatesWidgetState extends State<MyDatesWidget> {
  var _currentSelectedDate = DateTime.now();
  var _currentSelectedTime = TimeOfDay.now();
  // 1. Call de nuestro dataPicker
  void callDatePicker() async {
    var selectedDate = await getDatePickerWidget();
    setState(() {
      _currentSelectedDate = selectedDate;
    });
  }

  Future<DateTime> getDatePickerWidget() {
    return showDatePicker(
        context: context,
        initialDate: _currentSelectedDate,
        firstDate: DateTime(2017),
        lastDate: DateTime(2025),
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child);
        });
  }

  void callTimePicker() async {
    var selectedTime = await getTimePickerWidget();
    setState(() {
      _currentSelectedTime = selectedTime;
    });
  }

  // Tiempo
  Future<TimeOfDay> getTimePickerWidget() {
    return showTimePicker(
        context: context,
        initialTime: _currentSelectedTime,
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child);
        });
  }

  //2. Crear widget DatePicker
  @override
  Widget build(BuildContext context) {
    //3. Botón que lanza nuestro dialogo datePicker
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FlatButton(
              onPressed: callDatePicker,
              child: Text('Lanzar nuestro datePicker'),
            ),
            Text('$_currentSelectedDate'),
            FlatButton(
              onPressed: callTimePicker,
              child: Text('Lanzar nuestro timePicker'),
            ),
            Text('$_currentSelectedTime')
          ],
        ),
      ),
    );
  }
}
