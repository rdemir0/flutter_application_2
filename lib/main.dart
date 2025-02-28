import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  static const platform = MethodChannel('com.example.native_alert');

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
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), //EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)
            ),
            // child: Text(
            //   "Hi there this flutter",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 16,
            //   ),
            // ),
            child: Icon(
              Icons.favorite,
              size: 64,
              color: Colors.white,
            )
          ),
        )   
      )
    );
  }
}