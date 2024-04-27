import 'package:flutter/material.dart';

class Edit_task extends StatefulWidget {
  const Edit_task({super.key});

  @override
  State<Edit_task> createState() => Edit_taskState();
}

class Edit_taskState extends State<Edit_task> {
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
          "Edit task",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
        backgroundColor: Color.fromARGB(255, 21, 25, 81),
      ),
    );
  }
}
