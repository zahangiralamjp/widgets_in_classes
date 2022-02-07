import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.amber),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    title: 'DefaultTabController',
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('DefaultTabController'),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.dashboard),
              child: Text('Dashboard'),
            ),
            Tab(
              icon: Icon(Icons.games),
              child: Text('Game'),
            ),
            Tab(
              icon: Icon(Icons.hardware),
              child: Text('Hardware'),
            ),
            Tab(
              icon: Icon(Icons.add_chart),
              child: Text('Chart'),
            ),
            Tab(
              icon: Icon(Icons.face),
              child: Text('Profile'),
            ),
          ]),
        ),
        body: Center(),
      ),
    );
  }
}
