import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.amber),
    debugShowCheckedModeBanner: false,
    home: MyGridView(),
    title: 'DefaultTabController',
  ));
}

class MyGridView extends StatefulWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('GridView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 8,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.black,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
