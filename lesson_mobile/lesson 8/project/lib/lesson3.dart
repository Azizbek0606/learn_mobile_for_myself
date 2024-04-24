import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/lesson2.dart';

class Lesson3 extends StatefulWidget {
  const Lesson3({super.key});

  @override
  State<Lesson3> createState() => _Lesson3State();
}

class _Lesson3State extends State<Lesson3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Lesson2();
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 43, 1, 31), // Dark pinkish color
                Color.fromARGB(255, 2, 14, 37), // Dark blue color
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _CustomContainer(new_text: "lorem"),
              _CustomContainer(new_text: "ipsum"),
              _CustomContainer(new_text: "dolor"),
              _CustomContainer(new_text: "sit"),
              _CustomContainer(new_text: "lorem"),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({super.key, required this.new_text});
  final String new_text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(12),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 127, 34, 129), // Correct the comment or value
            Color(0xFFc2e9fb), // Light blue, corrected hex format
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        new_text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
