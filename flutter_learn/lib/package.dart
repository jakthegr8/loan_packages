import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'features.dart';

class Package extends StatelessWidget {
  var _package;
  Package(this._package);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.white,
      ),
      width: double.infinity,
      child: _InvContent(_package),
      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
    );
  }
}

class _InvContent extends StatelessWidget {
  var package, bank_url, years, percentage, type, emi, period, rate, features, instalments;
  _InvContent(this.package) {
    bank_url = package['bank_url'];
    years = package['years'];
    percentage = package['percentage'];
    type = package['type'];
    emi = package['emi'];
    period = package['period'];
    rate = package['rate'];
    features = package['features'];
    instalments = package['instalments'];
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          _BankDetails(bank_url, years, percentage),
          Divider(),
          Container(
            child: Text(
              type.toString(),
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1.0),
                  fontWeight: FontWeight.bold,
                  fontFamily: "SFProDisplay-Bold",
                  fontSize: 20.0),
            ),
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(15.0, 2.5, 15.0, 0.0),
          ),
          _Installments(emi, period, rate),
          Container(
            child: Expansion(false,features,instalments),
            margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _BankDetails extends StatelessWidget {
  var bank_url, years, percentage;
  _BankDetails(this.bank_url, this.years, this.percentage);
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
              child: Image.network(
                bank_url.toString(),
                height: 42.7,
                width: 76.0,
              ),
              alignment: Alignment.centerLeft,
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
                          color: Color.fromRGBO(51, 51, 51, 1.0),
                          fontWeight: FontWeight.bold,
                          fontFamily: "SFProDisplay-Bold"),
                    ),
                    alignment: Alignment.topRight,
                  ),
                  Container(
                    child: Text(
                      years.toString()+"Years Avg",
                      style: TextStyle(
                          color: Color.fromRGBO(51, 51, 51, 1.0),
                          fontWeight: FontWeight.bold,
                          fontFamily: "SFProDisplay-Bold"),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              child: Text(
                percentage.toString() + "%",
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1.0),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "SFProDisplay-Bold"),
              ),
              alignment: Alignment.center,
            ),
            margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          ),
        ],
      ),
    );
  }
}

class _Installments extends StatelessWidget {
  var emi, period, rate;
  _Installments(this.emi, this.period, this.rate);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 15.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      NumberFormat.currency(symbol: "\$", decimalDigits: 0)
                          .format(emi),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(51, 51, 51, 1.0),
                          fontFamily: "SFProDisplay-Regular"),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    child: Text(
                      "Monthly Instalments",
                      style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                          fontFamily: "SFProDisplay-Regular"),
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
                      "$period Years",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(51, 51, 51, 1.0),
                          fontFamily: "SFProDisplay-Regular"),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                      child: Text(
                        "Lock-in-Period",
                        style: TextStyle(
                            color: Color.fromRGBO(128, 128, 128, 1.0),
                            fontFamily: "SFProDisplay-Regular"),
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(7.5, 0.0, 5.0, 0.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      rate.toString()[0].toUpperCase() +
                          rate.toString().substring(1),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(51, 51, 51, 1.0),
                          fontFamily: "SFProDisplay-Regular"),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                      child: Text(
                        "Rate Type",
                        style: TextStyle(
                            color: Color.fromRGBO(128, 128, 128, 1.0),
                            fontFamily: "SFProDisplay-Regular"),
                      ),
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 0.0)),
                ],
              ),
            ),
          )
        ],
      ),
      margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
    );
  }
}
