import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,  
        title: Text("Profile")
      ),
      backgroundColor: Colors.red[200],      
      body: Center(
        child: Text('Profile', style: TextStyle(
          color: Colors.red, fontSize: 18
        ))
      ),
    );
  }
}