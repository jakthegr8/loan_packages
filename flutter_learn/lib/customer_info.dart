import 'package:flutter/material.dart';

class CustomerInfo extends StatelessWidget {
  dynamic name;
  CustomerInfo(this.name);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color.fromRGBO(33, 64, 95, 1.0),
      width: double.infinity,
      height: 230.0,
      child: _Content(name),
    );
  }
}

class _Content extends StatelessWidget {
  dynamic name;
  _Content(this.name);
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
                  "Close",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "SFProText-Regular"),
                ),
              ),
              Expanded(
                child: Text("Edit",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: "SFProText-Regular")),
              )
            ],
          ),
          margin: EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 10.0),
        ),
        Container(
          child: Text(
            name.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35.0,
                color: Color.fromRGBO(255, 255, 255, 1.0),
                fontWeight: FontWeight.bold,
                fontFamily: "SFProDisplay-Bold"),
          ),
          margin: EdgeInsets.all(10.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                      onPressed: null,
                      mini: true,
                      backgroundColor: Colors.white,
                      child: Container(
                        child: Icon(
                          Icons.call,
                          color: Color.fromRGBO(33, 64, 95, 1.0),
                          size: 25.0,
                        ),
                        alignment: Alignment.center,
                      )),
                  Container(
                    child: Text(
                      "Call",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: "SFProText-Regular"),
                    ),
                    margin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 1.0),
                  )
                ],
              ),
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                      onPressed: null,
                      mini: true,
                      backgroundColor: Colors.white,
                      child: Container(
                        child: Icon(
                          Icons.chat,
                          color: Color.fromRGBO(33, 64, 95, 1.0),
                          size: 25.0,
                        ),
                        alignment: Alignment.center,
                      )),
                  Container(
                    child: Text(
                      "Whatsapp",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: "SFProText-Regular"),
                    ),
                    margin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 1.0),
                  )
                ],
              ),
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  FloatingActionButton(
                      onPressed: null,
                      mini: true,
                      backgroundColor: Colors.white,
                      child: Container(
                        child: Icon(
                          Icons.mail,
                          color: Color.fromRGBO(33, 64, 95, 1.0),
                          size: 25.0,
                        ),
                        alignment: Alignment.center,
                      )),
                  Container(
                    child: Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontFamily: "SFProText-Regular"),
                    ),
                    margin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 1.0),
                  )
                ],
              ),
              margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
            )
          ],
        ),
      ],
    );
  }
}
