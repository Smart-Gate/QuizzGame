import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  final String quistionText;
  Question (this.quistionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child:Text(quistionText,
    style: TextStyle(
     fontSize: 28),
     textAlign: TextAlign.center,
     

    ));
  }
}