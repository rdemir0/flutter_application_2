import 'package:flutter/material.dart';
import 'package:flutter_application_2/TodoApp/Components/DialogBox.dart';
import 'package:flutter_application_2/TodoApp/Components/TodoTile.dart';

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({super.key});

  @override
  State<TodoHomePage> createState() => TodoHomeState();
}

class TodoHomeState extends State<TodoHomePage> {

  final _controller  = TextEditingController();

  List todoList = [
    ["Make Tutorials", false],
    ["Do Exercise", false]
  ];


  void checkBoxChanged(bool? value, int index){
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void dialogSave(){
    setState(() {
      todoList.add([_controller.text, false]);
    });
    Navigator.pop(context);
    _controller.clear();
  } 

  void showAlertDialog(){
    showDialog(context: context, builder: (context) {
      return DialogBox(
        controller: _controller, 
        saveCallback: dialogSave, 
        cancelCallback: () =>  Navigator.pop(context) 
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(backgroundColor: Colors.yellow, title: Text("TO DO")),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index){
          return TodoTile(
            taskName: todoList[index][0], 
            taskCompleted: todoList[index][1], 
            onChanged: (value) => checkBoxChanged(value, index)
          );
        }
      ) 
    );
  }
}