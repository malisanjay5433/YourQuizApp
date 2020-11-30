import 'package:flutter/material.dart';
import 'package:quizstar/splash.dart';

void main() => runApp(MyApp());

Color gradientStart = Colors.deepPurple[700]; //Change start gradient color here
Color gradientEnd = Colors.purple[500]; //Change end gradient color here
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tata Class Edge",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        backgroundColor: Colors.orange
      ),
      home: splashscreen(),
    );
  }
}