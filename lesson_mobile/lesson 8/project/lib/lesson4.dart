import 'package:flutter/material.dart';

class Lesson4 extends StatefulWidget {
  const Lesson4({super.key});

  @override
  State<Lesson4> createState() => _Lesson4State();
}

class _Lesson4State extends State<Lesson4> {
  int pageNumber = 0;
  @override
  Widget build(BuildContext context) {
    print("ui qayta buld bo'ldi");
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageNumber,
        onTap: (value) {
          pageNumber = value;
          print("Bosilgan icon indexi -> ${value}");
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info page"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home Page"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info page"),
        ],
      ),
    );
  }
}
