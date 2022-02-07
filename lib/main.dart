import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MySignUpForm(),
  ));
}

class MySignUpForm extends StatefulWidget {
  const MySignUpForm({Key? key}) : super(key: key);

  @override
  _MySignUpFormState createState() => _MySignUpFormState();
}

class _MySignUpFormState extends State<MySignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Sign Up Form'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.amber),
                    hintText: 'Your Name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    hintText: 'Your Password'),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                    hintText: 'Your Phone Number'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 245.0, vertical: 16.0),
                  ),
                  onPressed: () {},
                  child: Text('Sign Up')),
            ],
          )),
        ),
      ),
    );
  }
}
