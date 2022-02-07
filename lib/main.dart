import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p1 =
        'https://images.unsplash.com/photo-1638963436960-6de003ff7339?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80';
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.amber,
        ),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(p1),
                  ),
                  accountName: Text('Zahangir Alam'),
                  accountEmail: Text('z@gmail.com')),
              ListTile(
                onTap: () {
                  print('Click Profile');
                },
                leading: Icon(Icons.face),
                title: Text('Profile'),
              ),
              ListTile(
                onTap: () {
                  print('Click Email');
                },
                leading: Icon(Icons.email),
                title: Text('E mail'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
