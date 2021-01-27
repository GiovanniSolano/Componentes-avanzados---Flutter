import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  @override
  _MySliverAppBarState createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    //1. SilverApp sustituimos el contenido por un CustomScrollView

    /* 
  SilverAppBar: Appbar con funcionalidades personalizables. Integra
  un ScrollView que permite ampliar a desarrollar dicha zona */

    //2. SilverApp. Eliminamos el AppBar de la pantalla principal
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            floating: false,
            pinned: false,
            snap: false,
            title: Text('SilverAppBar'),
            actions: [
              IconButton(
                icon: Icon(Icons.ac_unit),
                tooltip: 'Sirve para',
              )
            ],
            bottom: PreferredSize(
                child: Icon(Icons.access_alarm_sharp),
                preferredSize: Size.fromHeight(50)),
            flexibleSpace: FlexibleSpaceBar(title: Text('Hola')),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
              ListTile(title: Text('Item')),
            ]),
          )
        ],
      ),
    );
  }
}
