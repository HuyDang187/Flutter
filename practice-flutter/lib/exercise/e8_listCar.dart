import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo by HuyDang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cars'),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(children: const <Widget>[
        CarWidget('BMW','M3','https://stimg.cardekho.com/images/carexteriorimages/930x620/BMW/M3/8048/1601034227530/front-left-side-47.jpg?imwidth=890&impolicy=resize'),
        CarWidget('Nissan','GTR','https://stimg.cardekho.com/images/carexteriorimages/630x420/Nissan/Nissan-GTR/744/front-left-side-47.jpg?tr=w-456'),
        CarWidget('Nissan','Sentra','https://www.cnet.com/a/img/resize/4ff3384d94ee745cda03c7b31f91ebf1366527f8/hub/2022/02/21/31147bd8-84fb-4160-b365-89d65f22d65a/2022-nissan-sentra-sr-10.jpg?auto=webp&width=1200')
      ])
    );
  }
}

class CarWidget extends StatelessWidget {
  const CarWidget(this.make , this.model, this.imageSrc,{super.key});
  final String make;
  final String model;
  final String imageSrc;

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(children: <Widget>[
              Text('${make} ${model}',style: TextStyle(fontSize: 24.0),),
              Padding(
                padding: EdgeInsets.only(top:20.0),
                child: Image.network(imageSrc),
              )

            ],),
          ),
        ),
    );
  }
}