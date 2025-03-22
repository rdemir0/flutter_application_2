import 'package:flutter/material.dart';
import 'package:flutter_application_2/Buttons/SquareButton.dart';
import 'package:flutter_application_2/GridView/BuilderGridView.dart';
import 'package:flutter_application_2/ListView/BuilderListView.dart';
import 'package:flutter_application_2/ListView/CustomListView.dart';
import 'package:flutter_application_2/GridView/ItemGridView.dart';
import 'package:flutter_application_2/ListView/ItemListview.dart';
import 'package:flutter_application_2/TapView/TapView.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 142, 132, 161),
        appBar: AppBar(
          title: Text("My App"),
          elevation: 20,
          backgroundColor: Colors.deepPurpleAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          leading: Icon(Icons.menu, color: Colors.white),
          toolbarHeight: 60
        ),
        body: Center(
          child: SquareButton(
            onPressed: squareButtonPressed,
            text: 'Press Me',
          ),
        ),

      ),
    );
  }


  void squareButtonPressed(){
    print('SquareButton pressed!');
  }
  
}
