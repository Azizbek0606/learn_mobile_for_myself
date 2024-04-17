import 'package:flutter/material.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({super.key});
  void show_info(BuildContext context , String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
              onPressed: () {
                print("lock icon was pressed");
                show_info(context , "menu icon was pressed");
              },
              icon: Icon(Icons.menu)),
        title: Text(
          "Lesson 1",
          style: TextStyle(color: Color.fromRGBO(0, 233, 45, 1)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("lock icon was pressed");
                show_info(context , "lock icon was pressed");
              },
              icon: Icon(Icons.lock)),
          IconButton(
              onPressed: () {
                print("search icon was pressed");
                show_info(context, "Search icon was pressed");
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  } 
}
