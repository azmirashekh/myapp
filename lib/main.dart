import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("lab 06")),
        body: Center( 
          child: Image.network(
            'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?cs=srgb&dl=pexels-pixabay-56866.jpg&fm=jpg', 
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) {
                return child;
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error, size: 50, color: Colors.red);
            },
          ),
        ),
      ),
    );
  }
}