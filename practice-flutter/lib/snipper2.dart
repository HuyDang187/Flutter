import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppS2());
}

class MyAppS2 extends StatelessWidget {
  const MyAppS2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext content) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePageS2(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePageS2 extends StatelessWidget {
  MyHomePageS2({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text(
          'Hello World',
        ),
      ),
    );
  }
}
