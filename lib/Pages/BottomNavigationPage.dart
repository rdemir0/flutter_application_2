import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/HomePage.dart';
import 'package:flutter_application_2/Pages/ProfilePage.dart';
import 'package:flutter_application_2/Pages/SettingsPage.dart';


class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  
  @override
  State<BottomNavigationPage> createState() {
    return BottomNavigationState();
  }

}


class BottomNavigationState extends State<BottomNavigationPage> {


  final List pages = [HomePage(), ProfilePage(), SettingsPage()]; 


  var selectedTabIndex = 0;

  void navigatePages(int index){
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon:  Icon(Icons.home), label: "Home" ),
          BottomNavigationBarItem(icon:  Icon(Icons.person), label: "Profile" ),
          BottomNavigationBarItem(icon:  Icon(Icons.settings), label: "Settings" ),
        ], 
        backgroundColor: Colors.deepPurple[200],
        onTap: navigatePages,
        currentIndex: selectedTabIndex
      ),
      body: pages[selectedTabIndex]
    );
  }
   
}