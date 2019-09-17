import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class BasicInfo extends BrochsteinPage {
  BasicInfo() : super("Basic Info");

  @override
  State<StatefulWidget> createState() {
    return BasicInfoState();
  }
}

class BasicInfoState extends State<BasicInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 4.0, right: 4.0),
      children: <Widget>[
        Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset('assets/images/sideview.jpg'),
              ListTile(
                title: Text("Raymond and Susan Brochstein Pavilion"),
                subtitle: Text("Rice University, Houston, Texas"),
              ),
              ListTile(
                title: Text("Thomas Phifer & Partners"),
                subtitle: Text("Architect"),
                leading: Icon(Icons.business, color: Colors.blueGrey),
                dense: true,
              ),
              ListTile(
                title: Text("April 25, 2008"),
                subtitle: Text("Completion date"),
                leading: Icon(Icons.calendar_today, color: Colors.blueGrey),
                dense: true,
              )
            ],
          ),
        ),
      ],
    ));
  }
}
