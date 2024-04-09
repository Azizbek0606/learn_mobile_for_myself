import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic UI'),
          centerTitle: true,
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double width = 50; // Blokning boshlang'ich eni
  Color color = Colors.blue; // Blokning boshlang'ich rangi

  void _increaseWidth() {
    setState(() {
      width = width >= 300
          ? 50
          : width +
              10; // Agar eni 300 dan katta bo'lsa, 50 ga qaytaradi, aks holda 10 ga oshiradi
    });
  }

  void _changeColor() {
    final random = Random();
    setState(() {
      color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), 1); // Blokning rangini tasodifiy o'zgartiradi
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: _increaseWidth,
            child: Text('Increase Width'),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepPurple,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
          ),
          SizedBox(height: 20),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: width,
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff591367), Color(0xff09092a)],
                stops: [0, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius:
                  BorderRadius.circular(20), // Chegara radiusi qo'shildi
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: _changeColor,
            child: Text('Change Color'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            ),
          ),
          SizedBox(height: 20),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: 100, // Blokning eni
            height: 100, // Blokning bo'yi
            decoration: BoxDecoration(
              color: color, // Blokning rangi
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
