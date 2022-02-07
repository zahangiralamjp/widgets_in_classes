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
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 300,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.black12,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 300,
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
