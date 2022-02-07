import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  var currentIndex = 0;
  final screen = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Label',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Center(
      child: Text(
        'Person',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Label',
              backgroundColor: Colors.deepOrangeAccent,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
                backgroundColor: Colors.indigo),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Person',
              backgroundColor: Colors.deepPurpleAccent,
            ),
          ]),
    );
  }
}
