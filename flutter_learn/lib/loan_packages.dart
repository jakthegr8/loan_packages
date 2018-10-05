import 'package:flutter/material.dart';
import 'package.dart';

class LoanPackages extends StatelessWidget {
  dynamic json_data, package;

  LoanPackages(this.json_data);

  List<Widget> getLoanPackages() {
    List<Widget> packages = [];
    dynamic length = json_data.length;
    for (var i = 0; i < length; i++) {
      package = json_data[i];
      packages.add(Package(package));
    }
    return packages;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            child: Row(
              children: <Widget>[
                Text(
                  "Loan packages",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Color.fromRGBO(51, 51, 51, 1.0),
                      fontWeight: FontWeight.bold,
                      fontFamily: "SFProDisplay-Bold"),
                ),
                Expanded(
                  child: Text("Filter",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "SFProDisplay-Regular",
                          color: Color.fromRGBO(0, 68, 221, 1.0))),
                )
              ],
            ),
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0)),
        Container(
            child: Column(
          children: getLoanPackages(),
        )),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white),
          child: Container(
            child: Text(
              "Recalculate",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.indigo, fontSize: 20.0),
            ),
            margin: EdgeInsets.all(15.0),
          ),
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
        ),
        Container(
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Colors.deepOrangeAccent),
            child: Container(
              child: Text(
                "Send Referral",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              margin: EdgeInsets.all(15.0),
            ),
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          ),
        )
      ],
    );
  }
}
