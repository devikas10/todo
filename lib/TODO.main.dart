import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final controller = TextEditingController();
  final List<Map<String, dynamic>> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: TextField(
                      controller: controller,
                      style: const TextStyle(
                        color: Colors.white
                      ),
                      decoration: const InputDecoration(border: OutlineInputBorder()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: TextButton(
                    onPressed: () {
                      final now = DateTime.now();
                      setState(() {
                        todos.add({"des": controller.text, "dt": now});
                      });
                      controller.clear();
                    },
                    child: const Text("ADD"),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  ...todos.map(
                    (e) => Container(
                      height: 60,
                      padding:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: const Color(0xff1b1b1b),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Text(
                            (todos.indexOf(e) + 1).toString(),
                            style: const TextStyle(color: Colors.amber, fontSize: 20),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e["des"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(e["dt"].toString(),
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              controller.text = e["des"];
                              final index = todos.indexOf(e);
                              setState(() {
                                todos.removeAt(index);
                              });
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.amber,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              final index = todos.indexOf(e);
                              setState(() {
                                todos.removeAt(index);
                              });
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}