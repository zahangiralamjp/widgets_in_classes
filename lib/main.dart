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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  ////// buttom style ///
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    onPrimary: Colors.yellow,
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 25.0),
                  ),
                  onLongPress: () {
                    print('Hello Long Press');
                  },
                  onPressed: () {
                    print(
                      'Hello On Press',
                    );
                  },
                  child: Text(
                    'Elevated Button',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
