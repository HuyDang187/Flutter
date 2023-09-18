import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = false;
  runApp(MyAppE2());
}

class MyAppE2 extends StatelessWidget {
  const MyAppE2({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter layour demo',
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Demo flutter row and column'),
            ),
            body: Center(
              child: _buildImageColumn(),
            )),
      ),
    );
  }

  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(color: Colors.black26),
      child: Column(children: [
        _buildImageRow(1),
        _buildImageRow(3),
      ]),
    );
  }

  Widget _buildDecoratedImage(int imageIndex) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 10,
            color: Colors.black38,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      margin: const EdgeInsets.all(4),
      child: Image.asset('images/pic$imageIndex.jpg'),
    ));
  }

  Widget _buildImageRow(int imageIndex) {
    return Row(
      children: [
        _buildDecoratedImage(imageIndex),
        _buildDecoratedImage(imageIndex + 1)
      ],
    );
  }
}
