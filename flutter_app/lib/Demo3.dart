import 'package:flutter/material.dart';



class Demo3 extends StatefulWidget {
  @override
  _Demo3State createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Text('Demo3')
        ],
      ),
    );
  }
}