import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({
    super.key,
    required this.text,
    required this.onPressed 
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.amber[100],
      onPressed: onPressed, 
      textColor: Theme.of(context).primaryColor, 
      child: Text(text));
  }
}