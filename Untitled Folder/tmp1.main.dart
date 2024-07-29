import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 void main(){
  runApp(MaterialApp(
    home: Login(),
  ));
 }
 class Login extends StatefulWidget{
  Login({super.key});

  @override
 
 State<Login> createState()=> _LoginState();

 }
 class _LoginState extends State<Login>{

 @override
  Widget build(BuildContext context){
    return Scaffold(
     backgroundColor: Colors.black, 
    body: Container(
       padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
       height: double.infinity,
      width: double.infinity,
    child:  SizedBox(
   child: Image.asset(
        "assets/image.png",
        fit: BoxFit.cover,
         ),
      ),
    
        
    ),
    );
    
  }
 }