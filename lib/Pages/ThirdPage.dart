import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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
          Navigator.pushNamedAndRemoveUntil(
              context,
              '/drawer',  // Navigate to the root, which is FirstPage
              (route) => false, // This removes all previous routes from the stack
            );
        },
        child: Text('Go Root'),
      ),
    ),
    );
  }
}