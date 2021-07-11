import 'package:flutter/material.dart';
import 'package:flutter_app89/data/Damy.dart';


class CustomDropDawn extends StatefulWidget{
  @override
  _CustomDropDawnState createState() => _CustomDropDawnState();
}

class _CustomDropDawnState extends State<CustomDropDawn> {
  String currentCategory='sport';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.indigo),
      ),
      child: DropdownButton<String>(
          value: currentCategory,
        onChanged: (v){
        currentCategory=v;
        setState(() {});
        },
        items:MockData.mockData.getCategories().map((e){
          return DropdownMenuItem(child: Text(e),
          value: e,);
        }).toList()
      ),
    );


  }
}