import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvancedUI());
}

/*
Navigation
*/
class Lab06AdvancedUI extends StatelessWidget {
  const Lab06AdvancedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab O6 Advanced UI",
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(
                  8.0,
                ), // Added padding for better alignment
                child: Row(
                  children: [
                    Icon(Icons.people_alt_rounded, color: Colors.white),
                    SizedBox(width: 10),
                    Text("Contacts", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Device"),
                trailing: Text("0"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Messages"),
                trailing: Text("5"),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(title: Text("Lab O6 Advanced UI")),
        body: Center(
          child: Text(
            "Working with Navigation",
            style: TextStyle(fontSize: 60),
          ),
        ),
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
      ),
    );
  }
}
