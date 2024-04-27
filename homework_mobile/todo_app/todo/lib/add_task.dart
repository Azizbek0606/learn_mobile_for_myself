import 'package:flutter/material.dart';

class Add_task extends StatefulWidget {
  const Add_task({super.key});

  @override
  State<Add_task> createState() => Add_taskState();
}

class Add_taskState extends State<Add_task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print("Go Back...");
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Add task",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
        backgroundColor: Color.fromARGB(255, 21, 25, 81),
      ),
    );
  }
}
