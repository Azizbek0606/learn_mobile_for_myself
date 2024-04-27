import 'package:flutter/material.dart';
import 'package:todo/complated_task.dart';
import 'package:todo/todo_page.dart';
import 'package:todo/edit_task.dart';
import 'package:todo/add_task.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Add_task(),
    );
  }
}
