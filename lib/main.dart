import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: 'Sweet App',
    home: MyApp(),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog box'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            AlertDialog(
              title: Text('Delete File'),
              content: Text('Are You Confirm'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('No')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Yes')),
              ],
            ),
            ///// IOS ///
            CupertinoAlertDialog(
              title: Text('Delete File'),
              content: Text('Are You Confirm'),
              actions: [
                CupertinoDialogAction(child: Text('No')),
                CupertinoDialogAction(child: Text('Yes')),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Delete File'),
                            content: Text('Are You Confirm'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('No')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Yes')),
                            ],
                          ));
                },
                child: Text('Exit Now!')),
          ],
        ),
      ),
    );
  }
}
