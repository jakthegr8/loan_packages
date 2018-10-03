import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Expansion extends StatefulWidget {
  bool isExpand = false;
  Expansion(this.isExpand);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpansionState(isExpand);
  }
}

class ExpansionState extends State<Expansion> {
  bool isExpand = false;
  List<Widget> children = [];

  ExpansionState(this.isExpand);

  void getChildren() {
    setState(() {
      if (isExpand == false) {
        children.clear();
        children.add(Column(
          children: <Widget>[
            _Features(),
            _Rates(),
            FlatButton(
              onPressed: getChildren,
              child: Row(
                children: <Widget>[
                  Text("Show less"),
                  Icon(Icons.keyboard_arrow_up)
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
          ],
        ));
        isExpand = true;
      } else {
        children.clear();
        children.add(FlatButton(
          onPressed: getChildren,
          child: Row(
            children: <Widget>[
              Text("Show more"),
              Icon(Icons.keyboard_arrow_down)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
        isExpand = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> init = [
      FlatButton(
        onPressed: getChildren,
        child: Row(
          children: <Widget>[
            Text("Show more"),
            Icon(Icons.keyboard_arrow_down)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      )
    ];
    // TODO: implement build
    return Column(
      children: children.isEmpty ? init : children,
    );
  }
}

class _Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Divider(),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 2.5),
          width: double.infinity,
          alignment: Alignment.topLeft,
          child: Text(
            "Features",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Container(
                child: Text(
                  "1.5% Partial or full redemption penality",
                  style: TextStyle(fontSize: 15.0),
                ),
                alignment: Alignment.topLeft,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          margin: EdgeInsets.all(5.0),
        ),
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Text(
                    "Uses the bank\'s Internal Board Rate Singapore Residential Financing Rate of 4.5% to calculate interest rates ",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  alignment: Alignment.topLeft,
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          margin: EdgeInsets.all(5.0),
        ),
      ],
    );
  }
}

class _Rates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Divider(),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 2.5),
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: Text(
                  "Rates & Instalments",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(child: Divider(),),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Year 1",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("1.72%",
                          textAlign: TextAlign.right,
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.black)),
                    ),
                    Expanded(
                      child: Text(NumberFormat.currency(symbol: "\$",decimalDigits: 0).format(463).toString() + "/mth",
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontSize: 15.0, color: Colors.black)),
                    )
                  ],
                ),margin: EdgeInsets.all(5.0),
              ),
              Container(
                child: Divider(),
              ), Container(
    child: Row(
    children: <Widget>[
    Expanded(
    child: Text(
    "Year 1",
    textAlign: TextAlign.left,
    style: TextStyle(
    fontSize: 15.0,
    color: Color.fromRGBO(128, 128, 128, 1.0),
    ),
    ),
    ),
    Expanded(
    child: Text("1.72%",
    textAlign: TextAlign.right,
    style:
    TextStyle(fontSize: 15.0, color: Colors.black)),
    ),
    Expanded(
    child: Text(NumberFormat.currency(symbol: "\$",decimalDigits: 0).format(463).toString() + "/mth",
    textAlign: TextAlign.right,
    style:
    TextStyle(fontSize: 15.0, color: Colors.black)),
    )
    ],
    ),margin: EdgeInsets.all(5.0),
    ),
              Container(
                child: Divider(

                ),
              ), Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Year 1",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("1.72%",
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontSize: 15.0, color: Colors.black)),
                    ),
                    Expanded(
                      child: Text(NumberFormat.currency(symbol: "\$",decimalDigits: 0).format(463).toString() + "/mth",
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontSize: 15.0, color: Colors.black)),
                    )
                  ],
                ),margin: EdgeInsets.all(5.0),
              ),
              Container(
                  child: Divider(), ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Year 1",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromRGBO(128, 128, 128, 1.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text("1.72%",
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontSize: 15.0, color: Colors.black)),
                    ),
                    Expanded(
                      child: Text(NumberFormat.currency(symbol: "\$",decimalDigits: 0).format(463).toString() + "/mth",
                          textAlign: TextAlign.right,
                          style:
                          TextStyle(fontSize: 15.0, color: Colors.black)),
                    )
                  ],
                ),margin: EdgeInsets.all(5.0),
              ),
              Container(child: Divider(),)
            ],
          ),
        ),
      ],
    );
  }
}
