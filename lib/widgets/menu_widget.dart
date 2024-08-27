import 'package:flutter/material.dart';
import 'package:ui_srtreaming_app/colors_schema.dart';

class MenuWidget extends StatefulWidget {
  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: "Paket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Transaksi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColButton,
        onTap: _onItemTapped,
      ),
    );
  }
}
