import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
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
  int red = 255;
  int green = 0;
  int blue = 0;
  double length = 50;

  void _changeColor() {
    setState(() {
      red = (red + 30) % 256;
      green = (green + 60) % 256;
      blue = (blue + 90) % 256;
    });
  }

  void _increaseLength() {
    setState(() {
      length += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
              onPressed: _changeColor,
              child: Text('Change Color'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.green,
              ),
            ),
          ),
          Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, red, green, blue),
              border: Border.all(
                color: Color.fromARGB(
                    255, 0, 216, 249),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.5), 
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: _increaseLength,
            child: Text('Increase Width'),
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blue,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: length,
            height: 50,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
