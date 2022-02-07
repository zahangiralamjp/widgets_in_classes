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
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void vaildate() {
    if (formkey.currentState!.validate()) {
      print('Validated');
    } else {
      print('Not Validated');
    }
  }

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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User Email',
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.amber),
                          hintText: 'Your Email'),
                      validator: (YourEmail) {
                        if (YourEmail!.isEmpty) {
                          return 'Your Email Empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.blue),
                          hintText: 'Your Password'),
                      validator: (password) {
                        if (password!.isEmpty) {
                          return 'Your password Empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'PhoneNumber',
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.green),
                          hintText: 'Your Phone Number'),
                      validator: (PhoneNumber) {
                        if (PhoneNumber!.isEmpty) {
                          return 'User Name Empty';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 245.0, vertical: 16.0),
                        ),
                        onPressed: () {
                          vaildate();
                        },
                        child: Text('Sign Up')),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
