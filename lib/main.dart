import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.brown),
    title: 'Demo App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: null),
      appBar: AppBar(
        title: Text('This is AppBer'),
      ),
      body: Container(
        child: Text(
          "Hello world",
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style: TextStyle(fontSize: 50, backgroundColor: Colors.pink),
        ),
      ),
    );
  }
}
