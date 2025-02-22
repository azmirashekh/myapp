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
                padding: EdgeInsets.all(8.0),  // Added padding for better alignment
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
        body: SingleChildScrollView(  // Wrap the body to avoid overflow
          child: Center(
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Image.network(
                    'https://media.istockphoto.com/id/183412466/photo/eastern-bluebirds-male-and-female.jpg?s=612x612&w=0&k=20&c=6_EQHnGedwdjM9QTUF2c1ce7cC3XtlxvMPpU5HAouhc=',
                  ),
                ),
                SizedBox(height: 20),  // Added space between images
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyUSpU3kL279ei16K3JgL7h86WKKWHXcJIA&s',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
