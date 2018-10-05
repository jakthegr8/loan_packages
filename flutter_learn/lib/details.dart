import 'package:flutter/material.dart';
import 'summary.dart';
import 'loan_packages.dart';

class Details extends StatelessWidget {
  dynamic json_data;
  Details(this.json_data);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(style: BorderStyle.solid, color: Colors.black),
              right: BorderSide(style: BorderStyle.solid, color: Colors.black),
              bottom:
                  BorderSide(style: BorderStyle.solid, color: Colors.black))),
      width: double.infinity,
      child: Content(json_data),
    );
  }
}

class Content extends StatelessWidget {
  dynamic json_data;
  Content(this.json_data);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    List<Widget> lists = [
      Container(
        width: double.infinity,
        child: Summary(json_data['summary']),
        decoration: BoxDecoration(color: Colors.white70),
      ),
      Container(
        width: double.infinity,
        child: LoanPackages(json_data['loan_packages']),
        decoration: BoxDecoration(color: Colors.grey.shade200),
      )
    ];
    return ListView.builder(
        shrinkWrap: true,
        itemCount: lists.length,
        itemBuilder: (context, index) {
          return lists[index];
        });
  }
}
