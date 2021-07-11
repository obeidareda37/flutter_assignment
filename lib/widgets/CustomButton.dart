import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: (){},
        child: Text('Submit'),
      ),
    );
  }

}