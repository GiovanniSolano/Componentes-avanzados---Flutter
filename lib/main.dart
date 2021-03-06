import 'package:flutter/material.dart';

import 'componentes_avanzados/stepper.dart';

// import 'componentes_avanzados/divider.dart';
// import 'componentes_avanzados/tooltip.dart';
// import 'componentes_avanzados/datatable.dart';
// import 'componentes_avanzados/chip.dart';
// import 'componentes_avanzados/bottomsheet.dart';
// import 'componentes_avanzados/sliverappbar.dart';
// import 'componentes_avanzados/expansionPanel.dart';
// import 'componentes_avanzados/dates.dart';
// import 'componentes_avanzados/dropbuttons.dart';
// import 'componentes_avanzados/simpledialog.dart';
// import 'componentes_avanzados/slider.dart';
// import 'componentes_avanzados/stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyStepperWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
