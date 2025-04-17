import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Practical : 3",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          body: Column(
            children: <Widget>[
              Image.network(
                'https://picsum.photos/250?image=9',
              ),
              Text(
                "LAPTOP",
                style: TextStyle(color: Colors.blueGrey),
              ),
              Text(
                "This is image of laptop.",
                style: TextStyle(color: Colors.blue),
              ),
              Icon(
                Icons.favorite,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',

              ),
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ],
          ),
          ),
      ));
}