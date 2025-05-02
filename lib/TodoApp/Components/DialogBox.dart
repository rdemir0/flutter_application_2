import 'package:flutter/material.dart';
import 'package:flutter_application_2/TodoApp/Components/MyButton.dart';


class DialogBox extends StatelessWidget {

final TextEditingController controller;
VoidCallback saveCallback;
VoidCallback cancelCallback; 

  DialogBox({
    super.key,
    required this.controller,
    required this.saveCallback,
    required this.cancelCallback
  });   

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero
      ),
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add New Task",
              ),
            ),

            Spacer(),

            Row(
              children: [
                Expanded(
                  child: MyButton(text: "Save", onPressed: saveCallback),
                ),
               
                SizedBox(width: 16),

                Expanded(
                  child: MyButton(text: "Cancel", onPressed: cancelCallback),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}