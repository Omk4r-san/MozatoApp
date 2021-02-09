import 'package:flutter/material.dart';

class ProPage extends StatefulWidget {
  ProPage({Key key}) : super(key: key);

  @override
  _ProPageState createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Pro page"),
      ),
    );
  }
}
