import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Demo App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(width: 4, color: Colors.blue),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
