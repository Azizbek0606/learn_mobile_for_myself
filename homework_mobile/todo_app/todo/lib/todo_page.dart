import 'package:flutter/material.dart';

class Todo_app extends StatelessWidget {
  const Todo_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Todo app",
            style: TextStyle(color: Color(0xFFFFFFFF)),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  print("lock icon was pressed");
                },
                icon: Icon(Icons.calendar_month)),
          ]),
          body: 
          Container(
            color: Colors.black,
          ),
    );
  }
}
