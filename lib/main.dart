import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCheckBox(),
  ));
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: ListView(
        children: [
          buildCheckbox(),
        ],
      ),
    );
  }

  Widget buildCheckbox() => ListTile(
        onTap: () {
          setState(() {
            this.value = !value;
          });
        },
        leading: Checkbox(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
        title: Text(
          'Checkbox 1',
          style: TextStyle(fontSize: 20),
        ),
      );
}
