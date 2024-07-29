import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

class Register extends StatefulWidget {
  Register({super.key});
  final email = RegExp(r"^[\w\-\.]{4,}@[\w\.\-]+\.[a-zA-Z]{2,8}$");
  final controller1= TextEditingController();
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/image.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(
                  height:120,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Business Account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.indigo,
                        fontWeight: FontWeight.w900,
                      
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(20),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: 120,
                        child: TextField(
                          // controller: emailid,
                          decoration: InputDecoration(
                            hintText: "E-mail",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Company name",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Comapny Type",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Website",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Icon(
                      Icons.check_box,
                      color: Colors.blue,
                      size: 18,
                    ),
                    Text(
                      "Agree with",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                    }
              );},
                  child: Text("Create account"))
            ],
          ),
          // ),
        ],
      ),
      // ],
    );
    // );
  }
}