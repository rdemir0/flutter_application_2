import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/SecondPage.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Drawer Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite, size: 48) 
            ),

            //home page tile
            ListTile(
              leading: Icon(Icons.home, size: 24),
              title: Text("H O M E"), 
              onTap: () {
                Navigator.pushNamed(context, "/home");
              }
            ),

            //settings page tile
            ListTile(
              leading: Icon(Icons.home, size: 24),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pushNamed(context, "/settings");
              }
            ) 

          ],
        ),
      ),
    );
  }
}