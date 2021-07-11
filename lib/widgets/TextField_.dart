import 'package:flutter/material.dart';

class MyCustomTextField extends StatelessWidget{
  String lable;
  MyCustomTextField(this.lable);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            labelText:lable,
            fillColor: Colors.blue.withOpacity(.2),
            filled: true
        ),
      ),
    );
  }

}