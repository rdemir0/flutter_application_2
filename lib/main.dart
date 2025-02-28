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
            contentPadding: EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              side:const BorderSide(color: Colors.black, width: 1, strokeAlign: -10),
              borderRadius: BorderRadius.circular(25),
            ),
            title:Row(
              children:const [
                Icon(Icons.location_on,size: 20,),
                SizedBox(width: 10,),
                Text("PLAN B",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ) ,
            isThreeLine: true,
            subtitle:Row(
              children:const [
                SizedBox(width: 30,),
                Expanded(
                  child: Text("At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis,",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                ),
              ],
            ) ,
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.close),
              ],
            ),
          ),
        )
      )
    );
  }
}