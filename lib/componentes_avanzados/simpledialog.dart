import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySimpleDialogWidget extends StatefulWidget {
  @override
  _MySimpleDialogWidgetState createState() => _MySimpleDialogWidgetState();
}

enum options { YES, NO, MAYBE }

class _MySimpleDialogWidgetState extends State<MySimpleDialogWidget> {
  String optionSelectedString = "Nombre";
  void _setOptionSelectedValue(String valueSelected) {
    setState(() {
      optionSelectedString = valueSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> _showDialog() async {
      switch (await showDialog<options>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              backgroundColor: Colors.grey,
              titlePadding: EdgeInsets.all(10),
              title: Text(
                'Te gusta comer',
                style: TextStyle(color: Colors.white),
              ),
              children: [
                SimpleDialogOption(
                  child: Text('SI', style: TextStyle(color: Colors.white70)),
                  onPressed: () => Navigator.pop(context, options.YES),
                ),
                SimpleDialogOption(
                  child: Text('NO', style: TextStyle(color: Colors.white70)),
                  onPressed: () => Navigator.pop(context, options.NO),
                ),
                SimpleDialogOption(
                  child:
                      Text('Quizás', style: TextStyle(color: Colors.white70)),
                  onPressed: () => Navigator.pop(context, options.MAYBE),
                ),
              ],
            );
          })) {
        case options.YES:
          _setOptionSelectedValue('Yes');
          break;
        case options.NO:
          _setOptionSelectedValue('No');
          break;
        default:
          _setOptionSelectedValue('Maybe');
      }
    }

    return SafeArea(
      child: Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: _showDialog,
                  child: Text(optionSelectedString),
                ),
                RaisedButton(
                  onPressed: () => showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Cuidado!'),
                          content: Text('¿Quieres salir de la App?'),
                          actions: [
                            FlatButton(
                              child: Text('Si'),
                              onPressed: () => Navigator.of(context).pop(),
                            )
                          ],
                        );
                      }),
                  child: Text('Alert Dialog'),
                ),
                Builder(
                  builder: (BuildContext context) {
                    return RaisedButton(
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          // content: Text('Soy SnackBar'),
                          content: Row(children: [
                            Icon(Icons.linked_camera),
                            Text(' Cámara seleccionada')
                          ]),
                        ));
                      },
                      child: Text('SnackBar'),
                    );
                  },
                )
              ],
            )),
      ),
    );
  }
}
