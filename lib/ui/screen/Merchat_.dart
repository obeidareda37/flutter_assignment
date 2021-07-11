import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app89/widgets/CustomButton.dart';
import 'package:flutter_app89/widgets/DropDownList.dart';
import 'package:flutter_app89/widgets/TextField_.dart';


class MershatPage extends StatefulWidget{
  @override
  _MershatPageState createState() => _MershatPageState();
}

class _MershatPageState extends State<MershatPage> {

  @override
  Widget build(BuildContext context) {
    return
    SingleChildScrollView(
      child: Column(children: [
        MyCustomTextField('Name'),
        MyCustomTextField('Password'),
        MyCustomTextField('ShopName'),
        MyCustomTextField('ShopCatg'),
        MyCustomTextField('Bio'),
        CustomDropDawn(),
        CustomElevatedButton()],),
    );
  }
}