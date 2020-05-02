import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('XYLOPHONE'),
          backgroundColor: Colors.red[900],
        ),
        body: SafeArea(
          child: Container(),
        ),
      ),
    );
  }
}
