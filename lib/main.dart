import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});
  @override
  Widget build(BuildContext context) {
    var myPinkContainer = Container(
        color: Colors.pink,
        height: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myContainer(),
            myContainer(),
          ],
        ),
      );
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("App Bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          myPinkContainer,
          myPinkContainer
        ],
      ),
    ));
  }

  Container myContainer() {
    return Container(
      color: Colors.amber,
      height: 150,
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        color: Colors.red,
        child: Text("Hello world"),
      ), 
    );
  }
}
