import 'package:flutter/material.dart';

// Primero definir la clase de cada elemento de la tabla
class ComidaItem {
  final String name;
  final int calories;

  ComidaItem(this.name, this.calories);
}

// Definir los valores de la lista
final List<ComidaItem> _comidasList = [
  ComidaItem('Yogurt', 27),
  ComidaItem('Hamburguesa', 1500),
  ComidaItem('Hot dog', 800),
  ComidaItem('Fries', 500),
  ComidaItem('Soda', 180),
];

// Widget de nuestra tabla
Widget _buildTable({bool sortAscending = true}) {
  return DataTable(
    sortColumnIndex: 0,
    sortAscending: sortAscending,
    onSelectAll: (bool value) {},
    columns: <DataColumn>[
      DataColumn(label: Text('Nombre'), tooltip: 'Nombre de la comida'),
      DataColumn(
          label: const Text('Calorias'),
          tooltip: 'Calorias',
          numeric: true,
          onSort: (int columnIndex, bool ascending) {}),
    ],
    rows: _comidasList.map<DataRow>((ComidaItem comidaItem) {
      return DataRow(
        key: Key(comidaItem.name),
        onSelectChanged: (bool selected) {},
        cells: <DataCell>[
          DataCell(
            Text(comidaItem.name),
          ),
          DataCell(Text('${comidaItem.calories}'),
              showEditIcon: true, onTap: () {}),
        ],
      );
    }).toList(),
  );
}

class MyDataTableWidget extends StatefulWidget {
  @override
  _MyDataTableWidgetState createState() => _MyDataTableWidgetState();
}

class _MyDataTableWidgetState extends State<MyDataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _buildTable(sortAscending: true)),
    );
  }
}
