import "package:flutter/material.dart";


class BuilderGridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (context, index) => Container(
          color: Colors.deepPurple,
          margin: EdgeInsets.all(2)
        ),
      )
    );
  }
}
