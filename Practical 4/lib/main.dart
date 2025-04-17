import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text("Practical4"),),
      body:Column(
          children: [
            RichText(text: TextSpan(text: "Mansi",children: [TextSpan(text: "Dhandha",style: TextStyle(color: Colors.red))])),
            Container(
                height: 300.0,width: 400.0,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                color: Colors.amberAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  textDirection: TextDirection.ltr,
                  children: [
                    Column(
                      children: [
                        Text("Roll no.",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                        Text("1",style: TextStyle(color: Colors.red)),
                        Text("2",style: TextStyle(color: Colors.blue)),
                        Text("3",style: TextStyle(color: Colors.blue)),
                        TextButton(
                          onPressed: () {
                            print('TextButton pressed!');
                          },
                          child: Text('Press Me'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Name",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                        Text("Mansi",style: TextStyle(color: Colors.red)),
                        Text("ABC",style: TextStyle(color: Colors.blue)),
                        Text("DEF",style: TextStyle(color: Colors.blue)),
                        OutlinedButton(
                          onPressed: () {
                            print('OutlinedButton pressed!');
                          },
                          child: Text('Press Me'),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Text("Marks",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),
                        Text("80",style: TextStyle(color: Colors.red)),
                        Text("87",style: TextStyle(color: Colors.blue)),
                        Text("90",style: TextStyle(color: Colors.blue)),
                        FloatingActionButton(
                          onPressed: () {
                            print('FloatingActionButton pressed');
                          },
                          child: Text('Press'),
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,

                        ),

                      ],
                    ),
                  ],
                ),

            ),
          ],
      ),
      ),
    ),
  );
}