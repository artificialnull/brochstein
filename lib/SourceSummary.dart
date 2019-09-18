import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class SourceSummary extends BrochsteinPage {
  SourceSummary() : super("Source Summary");

  @override
  State<StatefulWidget> createState() {
    return SourceSummaryState();
  }
}

class SourceSummaryState extends State<SourceSummary> {
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
                      Image.asset('assets/images/ojb.jpg'),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0, bottom: 24.0, left: 16.0, right: 16.0),
                        child: Text(
                          "The Brochstein Pavilion was constructed to fill space left over after the addition of Rice’s Fondren Library cut off part of the Quad. Intended to be an iconic campus landmark, the Pavilion and surrounding garden areas offer a stark yet pleasant contrast to the architectural style of Rice’s other buildings. The 6,000SF main structure is situated in the middle of a 10,000SF concrete plaza, sandblasted and scored in a pattern reminiscent of the building’s structural frame. The Pavilion and the garden feature movable furniture and subtle lighting to encourage visitors to enjoy the setting.", style: TextStyle(fontSize: 16.0),
                        ),
                      )
                    ],
                  )),
              Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset('assets/images/asla.jpg'),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0, bottom: 24.0, left: 16.0, right: 16.0),
                        child: Text(
                          "The Brochstein Pavilion creates a powerful spatial framework which demonstrates the ability of architecture to foster dynamism within a community. From the outset of the project, the Pavilion was intended to be flexible and nonprogrammed - rather than having a set purpose, it would serve as the intellectual crossroads of Rice. In line with this goal of flexibility, the University waived the normally-stringent architectural requirements placed upon most new construction. As such, the Pavilion does not try to conform to its surroundings; rather, it strives to be unique while nevertheless melding with the surrounding environment.", style: TextStyle(fontSize: 16.0),
                        ),
                      )
                    ],
                  ))
            ]));
  }
}
