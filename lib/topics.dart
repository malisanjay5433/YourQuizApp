import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/quizpage.dart';
import 'package:quizstar/videos.dart';
import 'package:quizstar/quizpage.dart';
class JsonPage extends StatefulWidget {
  @override
  _JsonPageState createState() => _JsonPageState();
}
class _JsonPageState extends State<JsonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Topics"),),
      body: Center(
        child: FutureBuilder(builder: (context, snapshot){
          var showData=json.decode(snapshot.data.toString());
           return ListView.builder(            
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                title: Text(showData[index]['topic']),
                subtitle: Text(showData[index]['department']),
                onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homepage(),
                    ));
                 }
              );
            },
            itemCount: showData.length,
          );
         
        }, future: DefaultAssetBundle.of(context).loadString("assets/topics.json"),
        ),
      ),
    );
  }
}