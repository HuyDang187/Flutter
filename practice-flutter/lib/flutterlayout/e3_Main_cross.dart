import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAppE3());
}

class MyAppE3 extends StatelessWidget {
  const MyAppE3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      home: Scaffold(
          appBar: AppBar(title: Text('Main and Cross demo with Flutter')),
          body: Center(
            child: _buildImageRow(),
          )),
    );
  }

  Widget _buildImageRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'images/pic1.jpg',
          fit: BoxFit.cover,
          width: 50,
        ),
        Image.asset(
          'images/pic2.jpg',
          fit: BoxFit.cover,
          width: 50,
        ),
        Image.asset(
          'images/pic3.jpg',
          fit: BoxFit.cover,
          width: 50,
        ),
      ],
    );
  }

  Widget buildImageColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'images/pic1.jpg',
          fit: BoxFit.cover,
          width: 100,
        ),
        Image.asset(
          'images/pic2.jpg',
          fit: BoxFit.cover,
          width: 100,
        ),
        Image.asset(
          'images/pic3.jpg',
          fit: BoxFit.cover,
          width: 100,
        ),
      ],
    );
  }
}
