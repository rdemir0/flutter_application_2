import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});
  static const platform = MethodChannel('com.example.native_alert');

  List names = ["Ash","Brook","Misty"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Text("App Bar Title"),
          elevation: 20,
          backgroundColor: Colors.deepPurpleAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          leading: Icon(Icons.menu, color: Colors.white),
          toolbarHeight: 60,
          actions: [
            IconButton(onPressed: () async {
              try {
                // Call the native method to show the native alert
                await platform.invokeMethod('showNativeAlert');
              } on PlatformException catch (e) {
                print("Error: ${e.message}");
              }
            }, icon: Icon(Icons.logout, color: Colors.white,))
          ],
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(names[index]),
          ))
        
      )
    );
  }
}