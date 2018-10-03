import 'package:flutter/material.dart';
import 'package_layout.dart';
import 'package:intl/intl.dart';

class Summary extends StatelessWidget {
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
      margin: EdgeInsets.fromLTRB(2.0, 0.0, 2.0, 0.0),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Widget> lists = [
      Container(
        width: double.infinity,
        child: _SummaryContent(),
        decoration: BoxDecoration(color: Colors.white70),
      ),
      Container(
        width: double.infinity,
        child: _LoanPackages(),
        decoration: BoxDecoration(color: Colors.grey.shade200),
      )
    ];
    return ListView.builder(
        itemCount: lists.length,
        itemBuilder: (context, index) {
          return lists[index];
        });
//
  }
}

class _SummaryContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Summary",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Text("See more",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromRGBO(0, 68, 221, 1.0))),
              )
            ],
          ),
          margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Property type",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(128, 128, 128, 1.0),
                  ),
                ),
              ),
              Expanded(
                child: Text("Landed House",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              )
            ],
          ),
          margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 2.5),
        ),
        Container(
          child: Divider(
            color: Colors.grey,
          ),
          margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Purchase price",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(128, 128, 128, 1.0),
                  ),
                ),
              ),
              Text(
                NumberFormat.currency(symbol: "\$", decimalDigits: 0)
                    .format(368000),
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.fromLTRB(15.0, 2.5, 15.0, 2.5),
        ),
        Container(
          child: Divider(
            color: Colors.grey,
          ),
          margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        ),
        Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Case created",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromRGBO(128, 128, 128, 1.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Text("Aug 15 2018",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 20.0, color: Colors.black)),
                )
              ],
            ),
            margin: EdgeInsets.fromLTRB(15.0, 2.5, 15.0, 2.5)),
        Container(
            child: Divider(
              color: Colors.grey,
            ),
            margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0)),
        Container(
            child: Column(
              children: <Widget>[
                LinearProgressIndicator(
                  value: 0.2,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrange),
                ),
                Container(
                  child: Text(
                    "REFERRAL NOT SENT",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 13.5,
                        fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0),
                )
              ],
            ),
            margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0))
      ],
    );
  }
}

class _LoanPackages extends StatelessWidget {
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
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Text("Filter",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(0, 68, 221, 1.0))),
                )
              ],
            ),
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0)),
        Package(),
        Package(),
        Package(),
        Package(),
        Package(),
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
