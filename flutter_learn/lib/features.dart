import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Expansion extends StatefulWidget {
  bool isExpand = false;
  var features, instalments;
  Expansion(this.isExpand, this.features, this.instalments);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExpansionState(isExpand, features, instalments);
  }
}

class ExpansionState extends State<Expansion> {
  bool isExpand = false;
  var features, instalments;
  List<Widget> children = [];

  ExpansionState(this.isExpand, this.features, this.instalments);

  void getChildren() {
    setState(() {
      if (isExpand == false) {
        children.clear();
        children.add(Column(
          children: <Widget>[
            _Features(features),
            _Instalments(instalments),
            FlatButton(
              onPressed: getChildren,
              child: Row(
                children: <Widget>[
                  Text(
                    "Show less",
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1.0),
                        fontFamily: "SFProDisplay-Regular"),
                  ),
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
              Text(
                "Show more",
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1.0),
                    fontFamily: "SFProDisplay-Regular"),
              ),
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
            Text(
              "Show more",
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1.0),
                  fontFamily: "SFProDisplay-Regular"),
            ),
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
  var features, text;
  _Features(this.features);

  List<Widget> getFeatures() {
    List<Widget> featuresList = [];
    for (var i = 0; i < features.length; i++) {
      text = features[i];
      featuresList.add(FeatureContent(text));
    }
    return featuresList;
  }

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
        Column(
          children: getFeatures(),
        ),
      ],
    );
  }
}

class _Instalments extends StatelessWidget {
  var instalments, content, years, interest, amount;
  _Instalments(this.instalments);

  List<Widget> getInstalments() {
    List<Widget> instalmentsList = [];
    for (var i = 0; i < instalments.length; i++) {
      content = instalments[i];
      years = content['years'];
      interest = content['interest'];
      amount = content['amount'];
      instalmentsList.add(InstalmentContent(years, interest, amount));
    }
    return instalmentsList;
  }

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
              Container(
                child: Divider(),
              ),
              Column(
                children: getInstalments(),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 5.0,
      margin: EdgeInsets.only(right: 5.0),
      decoration: new BoxDecoration(
        color: Colors.black87,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
    );
  }
}

class FeatureContent extends StatelessWidget {
  dynamic text;
  FeatureContent(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: MyBullet(),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 2.5),
            ),
            Expanded(
              child: Container(
                child: Text(
                  text.toString(),
                  style: TextStyle(fontSize: 15.0),
                ),
                alignment: Alignment.topLeft,
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
      margin: EdgeInsets.all(5.0),
    );
  }
}

class InstalmentContent extends StatelessWidget {
  dynamic years, interest, amount;
  InstalmentContent(this.years, this.interest, this.amount);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                years.toString(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromRGBO(128, 128, 128, 1.0),
                ),
              ),
            ),
            Expanded(
              child: Text(interest.toString() + "%",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                      NumberFormat.currency(symbol: "\$", decimalDigits: 0)
                              .format(int.parse(amount))
                              .toString() +
                          "/mth",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15.0, color: Colors.black))),
            )
          ],
        ),
        margin: EdgeInsets.all(5.0),
      ),
      Container(
        child: Divider(),
      )
    ]);
  }
}
