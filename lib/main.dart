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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 250,
                height: 250,
                color: Colors.amber,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
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
