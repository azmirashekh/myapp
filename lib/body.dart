import 'dart:ffi';

import 'package:flutter/material.dart';

class AppbodyState extends StatefulWidget {
  const AppbodyState({super.key});

  @override
  State<AppbodyState> createState() => _AppbodyStateState();
}

class _AppbodyStateState extends State<AppbodyState> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    const Text("Home"),
    const Text("Search"),
    const Text('''
Settings'''),
  ];
  // Suggested code may be subject to a license. Learn more: ~LicenseLog:367893357.
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
