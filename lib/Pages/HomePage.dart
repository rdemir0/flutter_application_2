import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        )
      ),
      body: Center(
        child: Text('Welcome!', style: TextStyle(
          color: Colors.white, fontSize: 18
        ),)
      ),
    );
  }
}