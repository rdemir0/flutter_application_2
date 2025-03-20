import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {

  CustomListView({super.key});

  List names = ["Ash","Brook","Misty"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
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