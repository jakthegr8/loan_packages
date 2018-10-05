import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Summary extends StatelessWidget {
  dynamic summary,prop_type,price;
  Summary(this.summary)
  {
    prop_type = summary[0]['prop_type'];
    price = summary[1]['price'];
  }

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
                      color: Color.fromRGBO(51, 51, 51, 1.0),
                      fontWeight: FontWeight.bold,
                      fontFamily: "SFProDisplay-Bold"),
                ),
              ),
              Expanded(
                child: Text("See more",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "SFProDisplay-Regular",
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
                    fontFamily: "SFProDisplay-Regular",
                    color: Color.fromRGBO(128, 128, 128, 1.0),
                  ),
                ),
              ),
              Expanded(
                child: Text(prop_type.toString(),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromRGBO(51, 51, 51, 1.0),
                        fontFamily: "SFProDisplay-Regular")),
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
                    fontFamily: "SFProDisplay-Regular",
                    color: Color.fromRGBO(128, 128, 128, 1.0),
                  ),
                ),
              ),
              Text(
                NumberFormat.currency(symbol: "\$", decimalDigits: 0)
                    .format(int.parse(price)),
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(51, 51, 51, 1.0),
                    fontFamily: "SFProDisplay-Regular"),
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
                      fontFamily: "SFProDisplay-Regular",
                      color: Color.fromRGBO(128, 128, 128, 1.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(DateFormat('MMM dd yyyy').format(DateTime.now()),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(51, 51, 51, 1.0),
                          fontFamily: "SFProDisplay-Regular")),
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
                  backgroundColor: Color.fromRGBO(235, 235, 235, 1.0),
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
