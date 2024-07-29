import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home:Alert(),
  ));
}

class Alert extends StatelessWidget{
  Alert ({super.key});

  @override
  Widget build(BuildContext context){
    Future<bool?>alert(){
      return showDialog(
        
        barrierDismissible: false, 
         context: context,
         builder:(BuildContext context){
        return  AlertDialog(
          title: Text("confirm"),
          content:Text("do you want to confirm"),
          actions:[
            TextButton(
            onPressed:(){
              Navigator.of(context).pop(false);
            },
            child:Text("cancel"),
            ),
            TextButton(
            onPressed:(){
              Navigator.pop(context);
            },
            child:Text("confirm"),
            )
          ],
        );
         },
      );
    }
    return Scaffold( 
      body:Container(
         padding:EdgeInsets.all(20),
         child: ElevatedButton(
          onPressed:() async{
            final x = await alert();
            print(x);
          },
          child:Text("click me"),
         ),
         ),
      );

              }
}