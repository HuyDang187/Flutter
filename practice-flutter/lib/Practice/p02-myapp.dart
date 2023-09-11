import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppBar extends StatelessWidget{
  const MyAppBar ({required this.title,super.key});
  // ignore: empty_constructor_bodies
  final Widget title;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(child: title,),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child: Column(
        children: [
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            )),
          const Expanded(
            child: Center(
              child: Text('Hello world!'),
            ),
          )
        ],
      ),
    );
  }
}
void main(){
  runApp(const MaterialApp(
    title: 'My app',
    home: SafeArea(child: MyScaffold()),
  ));
}

