import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'customer_info.dart';
import 'details.dart';

void main() async {
  dynamic json_data = await getJson();
  runApp(MyApp(json_data));
}

class MyApp extends StatelessWidget {
  dynamic json_data;
  MyApp(this.json_data);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoApp(
      home: Scaffold(
        body: Container(
          child: UI(json_data),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class UI extends StatelessWidget {
  dynamic json_data;
  UI(this.json_data);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[CustomerInfo(json_data['customer_name']), Expanded(child: Details(json_data))],
    );
  }
}

Future<dynamic> getJson() async {
  Dio dio = new Dio();
  Response response =
      await dio.get("https://flutterdynamic.firebaseapp.com/data.json");
  dynamic json = response.data;
  print(json);
  return json;
}
