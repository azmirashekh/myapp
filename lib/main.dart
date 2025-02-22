import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvancedUI());
}

class Lab06AdvancedUI extends StatelessWidget {
  const Lab06AdvancedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab O6 Advanced UI",
      home: Scaffold(
        appBar: AppBar(title: Text("Lab O6 Advanced UI")),
        body: Center(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl:
                    "https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Image.network(
                    'https://media.istockphoto.com/id/183412466/photo/eastern-bluebirds-male-and-female.jpg?s=612x612&w=0&k=20&c=6_EQHnGedwdjM9QTUF2c1ce7cC3XtlxvMPpU5HAouhc='),
              ),
              Expanded(
                child: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYyUSpU3kL279ei16K3JgL7h86WKKWHXcJIA&s'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}