import 'package:flutter/material.dart';
import 'ui/screen/Customer_.dart';
import 'ui/screen/Merchat_.dart';

enum auth { Customer, Mershat }

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String email;
  bool visbilty = false;
  String password;
  auth typeValue = auth.Customer;

  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  save() {
    formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Form(
            key: formKey,
            child: Column(children: [
              Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text('Customer'),
                          value: auth.Customer,
                          groupValue: typeValue,
                          onChanged: (v) {
                            this.typeValue = v;
                            visbilty = false;
                            setState(() {});
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text('Mershat'),
                          value: auth.Mershat,
                          groupValue: typeValue,
                          onChanged: (v) {
                            this.typeValue = v;
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  )),
              Expanded(
                flex: 2,
                child:
                    typeValue == auth.Mershat ? MershatPage() : CustomerPage(),
              ),
            ])));
  }
}
