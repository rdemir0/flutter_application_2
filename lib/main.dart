import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Components/Buttons/SquareButton.dart';
import 'package:flutter_application_2/Components/ListView/BuilderListView.dart';
import 'package:flutter_application_2/Components/ListView/CustomListView.dart';
import 'package:flutter_application_2/Components/GridView/ItemGridView.dart';
import 'package:flutter_application_2/Components/ListView/ItemListview.dart';
import 'package:flutter_application_2/Pages/BottomNavigationPage.dart';
import 'package:flutter_application_2/Pages/CounterPage.dart';
import 'package:flutter_application_2/Pages/DrawerPage.dart';
import 'package:flutter_application_2/Pages/HomePage.dart';
import 'package:flutter_application_2/Pages/SecondPage.dart';
import 'package:flutter_application_2/Components/TapView/TapView.dart';
import 'package:flutter_application_2/Pages/SettingsPage.dart';
import 'package:flutter_application_2/Pages/ThirdPage.dart';

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
      home: CounterPage(),
      routes: {
        '/drawer': (context) => DrawerPage(),  // Route for the first page
        '/second': (context) => SecondPage(),  // Route for the second page
        '/third': (context) => ThirdPage(),
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
      },

    );
  }
  
}
