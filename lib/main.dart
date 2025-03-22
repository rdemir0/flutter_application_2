import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Buttons/SquareButton.dart';
import 'package:flutter_application_2/GridView/BuilderGridView.dart';
import 'package:flutter_application_2/ListView/BuilderListView.dart';
import 'package:flutter_application_2/ListView/CustomListView.dart';
import 'package:flutter_application_2/GridView/ItemGridView.dart';
import 'package:flutter_application_2/ListView/ItemListview.dart';
import 'package:flutter_application_2/Pages/FirstPage.dart';
import 'package:flutter_application_2/Pages/SecondPage.dart';
import 'package:flutter_application_2/TapView/TapView.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  
  void squareButtonPressed(){
    if (kDebugMode) {
      print('SquareButton pressed!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 142, 132, 161),
        body: FirstPage()
      ),
    );
  }
  
}
