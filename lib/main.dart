import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red), home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  void increment() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador - Meu primeiro App"),
      ),
      body: Container(
        color: Colors.purple,
        child: Center(
            child: Text(
          "CONTADOR:\n$counter",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
    );
  }
}
