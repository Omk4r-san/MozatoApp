import 'package:flutter/material.dart';

class COmmonWidgets extends StatefulWidget {
  COmmonWidgets({Key key}) : super(key: key);

  @override
  _COmmonWidgetsState createState() => _COmmonWidgetsState();
}

class _COmmonWidgetsState extends State<COmmonWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Text("common widets"),
    ));
  }
}
