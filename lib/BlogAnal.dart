import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class BlogAnal extends BrochsteinPage {
  BlogAnal() : super("Blog Analysis");

  @override
  State<StatefulWidget> createState() {
    return BlogState();
  }
}

class BlogState extends State<BlogAnal> {
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
                  Image.asset('assets/images/rda.jpg'),
                  Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text.rich(TextSpan(children: <InlineSpan>[
                        TextSpan(
                            text: "OffCite",
                            style: TextStyle(
                                fontSize: 16.0, fontStyle: FontStyle.italic)),
                        TextSpan(
                            text:
                                " is the online blog component of Rice Design Alliance’s ",
                            style: TextStyle(fontSize: 16.0)),
                        TextSpan(
                            text: "Cite Magazine",
                            style: TextStyle(
                                fontSize: 16.0, fontStyle: FontStyle.italic)),
                        TextSpan(
                            text:
                                ", and the blog’s review of the Pavilion sheds a new light on the structure. One key piece of information revealed by ",
                            style: TextStyle(fontSize: 16.0)),
                        TextSpan(
                            text: "OffCite",
                            style: TextStyle(
                                fontSize: 16.0, fontStyle: FontStyle.italic)),
                        TextSpan(
                            text:
                                " is that the Pavilion rests upon an artificial rise created purposefully to disrupt the surrounding flat campus terrain.",
                            style: TextStyle(fontSize: 16.0))
                      ]))),
                  Padding(
                      padding: EdgeInsets.only(
                          bottom: 24.0, left: 16.0, right: 16.0),
                    child: Text(
                      "The blog post makes the argument that a confluence of openness and protection give the Pavilion its unique appeal. This seems like a claim with which many might concur: the Pavilion's heavy use of glass links it to its surroundings, while a dense canopy shields it on either side.",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  )
                ],
              )),
        ]));
  }
}
