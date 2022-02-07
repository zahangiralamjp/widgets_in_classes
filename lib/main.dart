import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStack(),
  ));
}

class MyStack extends StatefulWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  _MyStackState createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Stack'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              height: 600,
              width: 600,
              color: Colors.amberAccent,
            ),
            Container(
              height: 500,
              width: 500,
              color: Colors.black12,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
