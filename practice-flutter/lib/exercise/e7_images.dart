import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    var title = 'Web Images';
    
    return MaterialApp(
        title: title,
          home: Scaffold(
            appBar: AppBar(
              title: Text(title),
              ),
            body:Center(
              child: Image.network('https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/M3/8048/1601034227530/front-left-side-47.jpg?imwidth=890&impolicy=resize'),
              )
              ),
  );
  }
}