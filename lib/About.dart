import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends BrochsteinPage {
  About() : super("About");

  @override
  State<StatefulWidget> createState() {
    return AboutState();
  }
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Brochstein Pavilion Scavenger Hunt Findings"),
            Text("Made by Ishan Kamat for ARC 308"),
            Text("i.k@utexas.edu"),
            RaisedButton(
              child: Text("OPEN WORKS CITED"),
              onPressed: () =>
                  launch(
                      "https://github.com/artificialnull/brochstein#works-cited"),
            )
          ],
        ),
      ),
    );
  }
}