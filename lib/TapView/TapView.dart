import 'package:flutter/material.dart';


class Tapview extends StatelessWidget{
  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("Container Tapped!");
          },
          child: Container(
            height: 100, width: 100, color: Colors.blueAccent,
            child: Center(
              child: Text("Tap me!"),
            ),
          ),
        )
      ),
    );
  }
}