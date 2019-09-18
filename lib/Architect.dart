import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class Architect extends BrochsteinPage {
  Architect() : super("Architect");

  @override
  State<StatefulWidget> createState() {
    return ArchitectState();
  }
}

class ArchitectState extends State<Architect> {
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
                      Image.asset('assets/images/phifer.jpg'),
                      Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            "Founder of Phifer & Partners, Thomas Phifer (center) intertwines modernism with humanist elements to connect his creations with the natural world around them. His constructions emphasize important values of community spirit, such as increased openness and a sense of interdisciplinary thought.",
                            style: TextStyle(fontSize: 16.0),
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 16.0, left: 16.0, right: 16.0),
                        child: Text(
                          "Aside from the Pavilion, Phifer has completed the North Carolina Museum of Art in Raleigh. He is currently working on the US Federal Courthouse in Salt Lake City, and he has been tasked with designing modern street lamp fixtures for the roads of New York City.",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 24.0, left: 16.0, right: 16.0),
                        child: Text(
                          "Phifer’s creations have won a total of 6 National Honor Awards and 21 New York Honor Awards from the American Institute of Architects. Among this impressive collection is the Brochstein Pavilion, which in 2010 won a National Honor Award from the AIA.",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      )
                    ],
                  )),
            ]));
  }
}
