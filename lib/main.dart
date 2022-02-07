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
      appBar: AppBar(
        title: Text('ZZ'),
      ),
      body: Center(
        child: Container(
          child: Text(
            'hello! I am Z',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          color: Colors.amber,
          height: 200,
          width: 200,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(30),
          alignment: Alignment.center,
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
