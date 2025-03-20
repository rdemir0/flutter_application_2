

import 'package:flutter/material.dart';

class Builderlistview extends StatelessWidget {

  Builderlistview({super.key});
  
  List<String> names = ["AA", "BB","CC"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            names[index], 
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ) 
          ),
          subtitle: Text(
            context.toString(), 
            style: TextStyle(
              fontSize: 12,
              color: Colors.cyan
            ) 
          ),
        ),
      ),
    );
  }
}