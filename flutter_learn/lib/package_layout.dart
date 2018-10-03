import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dropdown.dart';

class Package extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.white,
      ),
      width: double.infinity,
      child: _InvContent(),
      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
    );
  }
}

class _InvContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          _BankDetails(),
          Divider(),
          Container(
            child: Text(
              "FD-Linked Rate",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(15.0, 2.5, 15.0, 0.0),
          ),
          _Installments(),
          Container(
            child: Expansion(false),
            margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _BankDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      decoration: BoxDecoration(
//          border: Border.all(color: Colors.blue, style: BorderStyle.solid)),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Icon(Icons.ac_unit),
              alignment: Alignment.topLeft,
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Avg Interest Rate",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.topRight,
                  ),
                  Container(
                    child: Text(
                      "3 Years Avg",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "1.60",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
                Container(
                  child: Text(
                    "%",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          ),
        ],
      ),
    );
  }
}

class _Installments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      NumberFormat.currency(symbol: "\$", decimalDigits: 0)
                          .format(1750),
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    child: Text(
                      "Monthly Instalments",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "2 Years",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                      child: Text(
                        "Lock-in-Period",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Floating",
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                      child: Text(
                        "Rate Type",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0)),
                ],
              ),
            ),
          )
        ],
      ),
      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
    );
  }
}
