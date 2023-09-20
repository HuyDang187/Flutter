import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppF3());
}

class MyAppF3 extends StatelessWidget {
  const MyAppF3({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyCustomForm3(),
    );
  }
}

class MyCustomForm3 extends StatefulWidget {
  const MyCustomForm3({super.key});
  @override
  State<MyCustomForm3> createState() => _MyCustomForm3State();
}

class _MyCustomForm3State extends State<MyCustomForm3> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatetValue);
  }

  @override
  void dispose() {
    super.dispose();
    myController.dispose();
  }

  void _printLatetValue() {
    final text = myController.text;
    print('Second text field : ${text}(${text.characters.length})');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                print('First text field: $text (${text.characters.length})');
              },
            ),
            TextField(
              controller: myController,
            )
          ],
        ),
      ),
    );
  }
}
