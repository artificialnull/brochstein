import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class Surroundings extends BrochsteinPage {
  Surroundings() : super("Surroundings");

  @override
  State<StatefulWidget> createState() {
    return SurroundingState();
  }
}

class SurroundingState extends State<Surroundings> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
            padding:
                EdgeInsets.only(top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
            children: <Widget>[
          Card(
              clipBehavior: Clip.antiAlias,
              child:
                  Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    Image.asset('assets/images/brochstein_map.png'),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "The Brochstein Pavilion is situated near the nucleus of Rice University, and as such it is surrounded on all sides by the campus. This central location gives credence to the Pavilion's status as a centerpiece of Rice's student life.",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 24.0, left: 16.0, right: 16.0),
                      child: Text(
                          "Outside Rice, the environment remains mixed: suburban residential areas feature prominently to the north and south, while the urban Texas Medical Center lies directly to the west of the University.",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    )
                  ]))
        ]));
  }
}
