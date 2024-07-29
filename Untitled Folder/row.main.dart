import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: MyWidget()));
}
 class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget>createState() => _MyWidgetState();

 }
  class  _MyWidgetState extends State<MyWidget> {
    @override
Widget build(BuildContext context) {
  return Scaffold(
    body:  GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 2,
      mainAxisSpacing: 25
      ,
      scrollDirection: Axis.vertical,
      children: [
        Container( color: Colors.red),
          Container( color: Colors.white),
            Container( color: Colors.blue),
              Container( color: Colors.green),
                Container( color: Colors.yellow),
                  Container( color: Colors.orange),
                    Container( color: Colors.red),

      ],
    ),
  );
}
  
  }
