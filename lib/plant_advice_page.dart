import 'package:flutter/material.dart';

class PlantAdvicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text('We find solutions to nature and extreme weather conditions',style: TextStyle(color: Colors.white,fontSize: 30, ), textAlign: TextAlign.center,),
      ),),
    );
  }
}
