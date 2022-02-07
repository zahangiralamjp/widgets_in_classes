import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.brown),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rich Text!'),
      ),
      body: Center(
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Hello',
              style: TextStyle(color: Colors.amber, fontSize: 25)),
          TextSpan(
              text: 'World!',
              style: TextStyle(color: Colors.blueGrey, fontSize: 50)),
        ])),
      ),
    );
  }
}
