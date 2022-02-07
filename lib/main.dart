import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'MyApp',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var image1 =
      'https://images.unsplash.com/photo-1639140162308-8329e1c1bb75?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Material(
          color: Colors.amber,
          elevation: 8,
          borderRadius: BorderRadius.circular(20),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Ink.image(
                  image: NetworkImage(image1),
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Text(
                  'Button',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
