import 'package:flutter/material.dart';

void main() {
  runApp(MyAppS3());
}

class MyAppS3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidget();
}

class _MyStatefulWidget extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
      ),
      body: const Center(
        child: Text('this body scaffold'),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera),
          label: 'Take Photo',
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // drawer: Drawer(
      //   elevation: 20.0,
      //   child: Column(
      //     children: <Widget>[
      //     const UserAccountsDrawerHeader(
      //         accountName: Text('Flutter :'), children: [Text('Ross')]),
      //     ListTile(
      //       title: new Text('Inbox'),
      //       leading: new Icon(Icons.mail),
      //     ),
      //     const Divider(
      //       height: 0.1,
      //     ),
      //     ListTile(
      //       title: new Text('Primary'),
      //       leading: new Icon(Icons.inbox),
      //     ),
      //     ListTile(
      //       title: new Text('Social'),
      //       leading: new Icon(Icons.people),
      //     ),
      //     ListTile(
      //       title: new Text('Promotions'),
      //       leading: new Icon(Icons.local_offer),
      //     )
      //   ]),
      // ),
    );
  }
}
