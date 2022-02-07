import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyButtom(),
  ));
}

class MyButtom extends StatefulWidget {
  const MyButtom({Key? key}) : super(key: key);

  @override
  _MyButtomState createState() => _MyButtomState();
}

class _MyButtomState extends State<MyButtom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttom'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    print('Hello Z');
                  },
                  child: Text('Click Here')),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
