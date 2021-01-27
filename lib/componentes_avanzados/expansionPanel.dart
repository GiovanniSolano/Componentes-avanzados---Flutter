import 'package:flutter/material.dart';

// Info del expansion Panel
// Item
class Item {
  String contentExpandedTitle;
  String title;
  bool isExpanded;
  Item({this.contentExpandedTitle, this.title, this.isExpanded});
}

// Generador del item
List<Item> generateItemsList(int sizeOftheList) {
  return List.generate(sizeOftheList, (int index) {
    return Item(
        contentExpandedTitle: 'Contenido de nuestro item: $index',
        title: 'Item $index',
        isExpanded: false);
  });
}

List<Item> _listaDeItems = generateItemsList(20);

class MyExpansionPanelWidget extends StatefulWidget {
  @override
  _MyExpansionPanelWidgetState createState() => _MyExpansionPanelWidgetState();
}

class _MyExpansionPanelWidgetState extends State<MyExpansionPanelWidget> {
  @override
  Widget build(BuildContext context) {
    // scroll que contiene un expansionPanel
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: _myWidgetExpansionPanel(),
      ),
    );
  }

  // Widget del expansion panel
  Widget _myWidgetExpansionPanel() {
    return SafeArea(
      child: ExpansionPanelList(
        // Saber si esta expandido un item o no
        expansionCallback: (int index, bool isExpanded) {
          // Actualizar la vista, ver el item desplegado o no
          setState(() {
            _listaDeItems[index].isExpanded = !isExpanded;
          });
        },
        children: _listaDeItems.map<ExpansionPanel>((Item item) {
          // Devolver en cada elemento de la lista
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.title),
              );
            },
            body: ListTile(
              title: Text('To delete this panel, tap the screen with icon'),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _listaDeItems
                      .removeWhere((currentItem) => item == currentItem);
                });
              },
            ),
            isExpanded: item.isExpanded,
          );
        }).toList(),
      ),
    );
  }
}
