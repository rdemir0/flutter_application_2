import 'package:flutter/material.dart';

class ItemGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        padding: EdgeInsets.all(8.0),
        children: List.generate(20, (index) {
          return Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text('Item ${index + 1}',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          );
        }),
      ),
    );
  }
}
 