import 'package:flutter/material.dart';

class ItemListview extends StatelessWidget { 

  const ItemListview({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: ListView(
        children: [
          ListTile(title: Text('Item 1')),
          ListTile(title: Text('Item 2')),
          ListTile(title: Text('Item 3')),
          ListTile(title: Text('Item 4')),
          ListTile(title: Text('Item 5')),
        ],
      ),
    );
  }
}
