import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class PhotoInfo extends BrochsteinPage {
  PhotoInfo() : super("Photographs");

  @override
  State<StatefulWidget> createState() {
    return PhotoInfoState();
  }
}

class PhotoInfoState extends State<PhotoInfo> {
  var _labelled = true;

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
                ListTile(
                  title: Text("Front View"),
                  trailing: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        setState(() {
                          _labelled = !_labelled;
                        });
                      },
                      textColor: Colors.blueGrey,
                      splashColor: Colors.blueGrey,
                      child: Text(
                        _labelled ? "HIDE" : "SHOW",
                      )),
                ),
                Image.asset(_labelled
                    ? 'assets/images/brochstein_labelled.png'
                    : 'assets/images/brochstein_blank.png'),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Text(
                    "The Pavilion’s overall construction consists primarily of steel and aluminum with abundant use of glass, a composition which allows for significant openness and natural light while remaining structurally sound.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Text(
                    "Capping the Pavilion is an aluminum lattice structure which overhangs the sandblasted concrete below, providing considerable shade while allowing some sunlight to pass through.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, bottom: 24.0, top: 16.0),
                  child: Text(
                    "Additionally, large perforated aluminum sunshades rise above the lattice shade - these act as diffusers, filtering the harsh sun into a softer light for the skylights below.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                )
              ])),
          Card(
              clipBehavior: Clip.antiAlias,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                ListTile(
                  title: Text("Side View"),
                ),
                Image.asset('assets/images/brochstein_fountain.jpg'),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Text(
                    "The Pavilion is surrounded on the sides by a dense green canopy with open seating underneath, and large glass double doors open the interior into the terrace.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 16.0, bottom: 24.0),
                  child: Text(
                    "The doors also entrench the Pavilion within the Rice Quad: a long, open lawn where students often gather for concerts and other campus events.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ])),
          Card(
              clipBehavior: Clip.antiAlias,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                ListTile(
                  title: Text("Interior View"),
                ),
                Image.asset('assets/images/brochstein_interior.jpg'),
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 24.0),
                  child: Text(
                    "Due to its floor-to-ceiling glass walls, the interior of the Pavilion is very well lit by natural light. To supplement the light from its environment, artificial fluorescent-tube lighting is set into the ceiling in a functional yet unobtrusive way.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),

              ]))
        ]));
  }
}
