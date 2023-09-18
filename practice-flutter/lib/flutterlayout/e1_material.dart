import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyE1_non_material());
}

class MyE1 extends StatelessWidget {
  MyE1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter lay out demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo with materialApp'),
        ),
        body: const Center(
          child: Text('Hello world'),
        ),
      ),
    );
  }
}

class MyE1_non_material extends StatelessWidget {
  MyE1_non_material({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Hello world',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
