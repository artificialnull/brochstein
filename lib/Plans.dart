import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class Plans extends BrochsteinPage {
  Plans() : super("Plans");

  @override
  State<StatefulWidget> createState() {
    return PlanState();
  }
}

class PlanState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            padding:
                EdgeInsets.only(top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
            children: <Widget>[
          Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    color: Colors.blueGrey,
                    child: ListTile(
                      title: Text(
                        "Rice Quad Plan & Pavilion Section",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Image.asset('assets/images/large_plan.jpg'),
                ],
              )),
          Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      color: Colors.blueGrey,
                      child: ListTile(
                        title: Text("Pavilion Plan",
                            style: TextStyle(color: Colors.white)),
                      )),
                  Image.asset('assets/images/small_plan.jpg'),
                ],
              ))
        ]));
  }
}
