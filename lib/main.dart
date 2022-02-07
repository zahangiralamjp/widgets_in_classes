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
          title: Text('Text Field'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter User Name',
                ),
              ),
            ],
          ),
        ));
  }
}
