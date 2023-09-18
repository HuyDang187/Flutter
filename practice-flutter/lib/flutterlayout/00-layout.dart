import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/lake.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Text('Hello World'),
            Icon(
              Icons.star,
              color: Colors.red[500],
            )
          ]),
        ),
      ),
    );
  }
}
