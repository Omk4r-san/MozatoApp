import 'package:flutter/material.dart';

class GoOutPage extends StatelessWidget {
  const GoOutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(
                  Icons.location_pin,
                ),
                Text(
                  "Khar, West",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ]),
            ),
            searchBar(),
          ],
        ),
      )),
    );
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        elevation: 5,
        child: Container(
          height: 50,
          child: TextField(
              decoration: InputDecoration(
                  focusColor: Colors.grey,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Search here",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(30.0))))),
        ),
      ),
    );
  }
}
