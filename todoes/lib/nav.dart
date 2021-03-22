import 'package:flutter/material.dart';
import 'package:todoes/homescreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _SelectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text('To-Does'),
    Text('Calendar'),
  ];

  void _OnItemTap(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('ToDoes!'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_SelectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'To-Does',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            label: 'Calendar',
          ),
        ],
        currentIndex: _SelectedIndex,
        onTap: _OnItemTap,
        selectedItemColor: Colors.teal,
      ),
    );
  }
}
