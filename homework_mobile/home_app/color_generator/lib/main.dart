import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Color Generator'),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Container(
            width: 350,
            height: 350,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.deepPurple[700]!,
                  Colors.blue[400]!,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: MyWidget(),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double _width = 50;
  Color _color = Colors.blue;
  String _colorCode = 'RGBA(0, 0, 255, 1.0)';

  void _increaseWidth() {
    setState(() {
      _width = _width >= 300 ? 50 : _width + 50;
    });
  }

  void _changeColor() {
    final random = Random();
    setState(() {
      _color = Color.fromRGBO(
          random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
      _colorCode =
          'RGBA(${_color.red}, ${_color.green}, ${_color.blue}, ${_color.opacity})';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increaseWidth,
          child: Text('Increase Width'),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple,
            onPrimary: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          width: _width,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff591367), Color(0xff09092a)],
              stops: [0, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 40),
        ElevatedButton(
          onPressed: _changeColor,
          child: Text('Change Color'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            onPrimary: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: SelectableText(
            _colorCode,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
