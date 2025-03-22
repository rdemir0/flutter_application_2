import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "1st Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, "/second");
          }, 
          child: Text("Go to 2nd Page")),
      ),
    );
  }
}