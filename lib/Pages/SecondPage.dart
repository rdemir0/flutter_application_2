import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "2nd Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        )
      ),
      body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, "/third");
        },
        child: Text('Go Third'),
      ),
    ),
    );
  }
}