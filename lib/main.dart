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
              height: 500,
              width: 500,
              color: Colors.red,
            ),
            Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                )),
            Positioned(
                top: 10,
                left: 10,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                )),
          ],
        ),
      ),
    );
  }
}
