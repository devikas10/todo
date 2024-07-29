import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp
  (home: 
  Calculator()
  )
  );
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String display="";

  List<Map<String,dynamic>>key=[
    {"title": "AC", "color": Colors.red, "bg": Colors.grey},
    {"title": "C", "color": Colors.blue, "bg": Colors.grey},
    {"title": "%", "color": Colors.blue, "bg": Colors.grey},
    {"title": "/", "color": Colors.blue, "bg": Colors.grey},
    {"title": "7", "color": Colors.white, "bg": Colors.grey},
    {"title": "8", "color": Colors.white, "bg": Colors.grey},
    {"title": "9", "color": Colors.white, "bg": Colors.grey},
    {"title": "x", "color": Colors.blue, "bg": Colors.grey},
    {"title": "4", "color": Colors.white, "bg": Colors.grey},
    {"title": "5", "color": Colors.white, "bg": Colors.grey},
    {"title": "6", "color": Colors.white, "bg": Colors.grey},
    {"title": "-", "color": Colors.blue, "bg": Colors.grey},
    {"title": "1", "color": Colors.white, "bg": Colors.grey},
    {"title": "2", "color": Colors.white, "bg": Colors.grey},
    {"title": "3", "color": Colors.white, "bg": Colors.grey},
    {"title": "+", "color": Colors.blue, "bg": Colors.grey},
    {"title": "00", "color": Colors.white, "bg": Colors.grey},
    {"title": "0", "color": Colors.white, "bg": Colors.grey},
    {"title": ".", "color": Colors.white, "bg": Colors.grey},
    {"title": "=", "color": Colors.blue, "bg": Colors.grey},
  ];
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff080808),
      body:Column(
        children: [
          Container(
            padding:EdgeInsets.all(20),
            child:const Row(
              children:[
                Icon(
                  Icons.widgets_outlined,
                  color:Colors.grey,

                ),
                Expanded(
                  child:Text(
                    "Standard Calculator",
                    textAlign: TextAlign.center,
                    style:TextStyle(color:Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          Container(height:320,
          width:double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomRight,
          child: Text(display,
          style: TextStyle(color: Colors.white,fontSize: 60),
          )

          ),
          Expanded(
            child:Container(
              decoration:BoxDecoration(
                color:Color(0xff121212),
                borderRadius: 
                BorderRadius.only
                (
                  topLeft:Radius.circular(30),
                  topRight:Radius.circular(30),
                  ),
              ),
             child:GridView.count(
                crossAxisCount:4,
                childAspectRatio: 1.2,
                children:[
                  ...key.map(
                    (e) => TextButton(
                      onPressed: (){

                      },
                      child:Text(
                        e["title"],
                        style:TextStyle(
                          color:e["color"],
                          fontSize:26
                        )
                      )
                      ),
                      )
                ]
              )


            ) ,)


        ],
        ),
    );

  }
}