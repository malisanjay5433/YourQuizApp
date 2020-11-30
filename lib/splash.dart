import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/topics.dart';
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}
class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Container(
          decoration: BoxDecoration(

            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blue, Colors.red])),
        child: Center(
          child: Text(
            "TataClassEdge\nTest Your QUIZ !!",
            style: TextStyle(
              fontSize: 60.0,
              color: Colors.white,
              fontFamily: "Satisfy",
            ),
            textAlign: TextAlign.center,
            
          ),
        ),
      ),
    );
  }
}