import 'package:flutter/material.dart';
import 'package:mozatoApp/Go_out_page.dart';
import 'package:mozatoApp/Order_page.dart';
import 'package:mozatoApp/Pro_page.dart';
import 'package:mozatoApp/Profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _widgetOptions = [
    OrderPage(),
    GoOutPage(),
    ProPage(),
    ProfilePage()
  ];
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedindex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.grey,
                ),
                label: "Order"),
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.directions_walk,
                  color: Colors.grey,
                ),
                label: "Go Out"),
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                  color: Colors.grey,
                ),
                label: "Pro"),
            new BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.grey,
                ),
                label: "Profile"),
          ],
          currentIndex: _selectedindex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ));
  }
}
