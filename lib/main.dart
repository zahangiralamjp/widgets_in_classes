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
        child: Column(
          children: <Widget>[
            Text('hello W'),
            SizedBox(
              height: 15,
            ),
            Text('hello S'),
            SizedBox(
              height: 15,
            ),
            Text('hello B'),
            SizedBox(
              height: 15,
            ),
          ],
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
