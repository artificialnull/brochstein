import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class Drawing extends BrochsteinPage {
  Drawing() : super("Drawing");

  @override
  State<StatefulWidget> createState() {
    return DrawingState();
  }
}

class DrawingState extends State<Drawing> {
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
                  Image.asset('assets/images/drawing.jpg'),
                  Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "This drawing intends to show the elegant geometry of the Pavilion. Simple squares and rectangles come together to form an outline of a more elaborate structure.",
                        style: TextStyle(fontSize: 16.0),
                      )),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 24.0, left: 16.0, right: 16.0),
                    child: Text(
                      "The drawing also comments on the sense of line present throughout the Pavilion. Each stroke is defined and regular, and there is no confusing interference between the individual segments.",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  )
                ],
              )),
        ]));
  }
}
