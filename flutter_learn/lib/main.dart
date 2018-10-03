import 'package:flutter/material.dart';
import 'customer_info.dart';
import 'summary.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: UI(),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[CustomerInfo(), Expanded(child: Summary())],
    );
  }
}
