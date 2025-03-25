import 'package:flutter/material.dart';



class CounterPage extends StatefulWidget {
  const CounterPage({super.key});
  @override
  State<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {

  int counter = 0;

  void incrementCounter() {
    //setState rebuilds the widget
    setState(() {
      counter++;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Counter Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Times clicked: ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),

            //Message
            Text(counter.toString(), style: TextStyle(fontSize: 36)),

            ElevatedButton(
              onPressed: incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black
              ),
              child: Text("Increment"))
          ],
        )
      )
    );
  }
}

/*
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override,
  jkjkşj
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Counter Page",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
 */