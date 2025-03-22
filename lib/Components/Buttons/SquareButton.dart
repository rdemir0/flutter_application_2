import "package:flutter/material.dart";


class SquareButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  // Constructor to pass the required parameters for the button
  // ignore: use_key_in_widget_constructors
  const SquareButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.0,  // Set width (same value for square shape)
      height: 120.0, // Set height (same value for square shape)
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners with radius 8
          ),
        ),
        child: Text(text,
          style: TextStyle(
            color: Colors.white
          ),
          ),
      ),
    );
  }
}