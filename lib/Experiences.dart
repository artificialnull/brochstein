import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class Experiences extends BrochsteinPage {
  Experiences() : super("Experiences");

  @override
  State<StatefulWidget> createState() {
    return ExperienceState();
  }
}

class ExperienceState extends State<Experiences> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            padding:
                EdgeInsets.only(top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
            children: <Widget>[
          Card(
              clipBehavior: Clip.antiAlias,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Container(
                  color: Colors.blueGrey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
                        child: Text(
                          "“Very nice.”",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                              fontFamily: "PT Serif"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 12.0, bottom: 24.0, right: 24.0),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Dhilan Lahoti\nUndergraduate, Rice University",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "PT Serif",
                                  fontSize: 14.0,
                                  fontStyle: FontStyle.normal),
                              textAlign: TextAlign.right,
                            )),
                      ),
                    ],
                  ),
                ),
              ])),
              Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Container(
                      color: Colors.blueGrey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                            EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
                            child: Text(
                              "“I immediately noticed the geometric design of the Pavilion. The interior seemed minimalist, yet by no means had function been sacrificed for form.”",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: "PT Serif"),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 12.0, bottom: 24.0, right: 24.0),
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Ishan Kamat\nVisitor",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "PT Serif",
                                      fontSize: 14.0,
                                      fontStyle: FontStyle.normal),
                                  textAlign: TextAlign.right,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ]))
        ]));
  }
}
