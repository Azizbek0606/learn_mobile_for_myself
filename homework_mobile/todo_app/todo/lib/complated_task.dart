import 'package:flutter/material.dart';

class Complated_task extends StatefulWidget {
  const Complated_task({super.key});

  @override
  State<Complated_task> createState() => Complated_taskState();
}

class Complated_taskState extends State<Complated_task> {
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
          "Complated task",
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
        backgroundColor: Color.fromARGB(255, 21, 25, 81),
        ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
