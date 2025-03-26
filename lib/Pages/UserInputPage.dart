import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => UserInputState();
}

class UserInputState extends State<UserInputPage> {

  TextEditingController controller = TextEditingController();

  String greetingMessage = "";


  void greetUser(){
    setState(() {
      greetingMessage = "Hello, ${controller.text}";
    });
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TODO",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        )),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[100],
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMessage),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your"
                ),
                ), 
              ElevatedButton(onPressed: greetUser, child: Text("TAP"))
            ],
          )
        )
      ),
    );
  }
}