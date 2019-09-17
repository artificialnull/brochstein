import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class Purpose extends BrochsteinPage {
  Purpose() : super("Purpose");

  @override
  State<StatefulWidget> createState() {
    return PurposeState();
  }
}

class PurposeState extends State<Purpose> {
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
                Container(
                  color: Colors.blueGrey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
                        child: Text(
                          "“It is often our second thoughts - our conversations well after the lecture has ended - that define the thinking individuals we become. May this luminous pavilion be their venue.”",
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
                              "Deborah Harter\nSpeaker, Rice Faculty Senate",
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                          child: Text(
                            "Part of the University's \"Vision for the Second Century\" development plan, the Brochstein Pavilion was originally envisioned as a modern symbol of Rice and a signifier of the University's transition into the 21st century.",
                            style: TextStyle(fontSize: 16.0),
                          )),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          "Since its completion, the Pavilion has become a social hub within the Rice campus, attracting students and faculty alike. Visitors are welcome to purchase coffee and baked goods from FLO Paris, a cafe housed within the Pavilion.",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 24.0),
                        child: Text(
                          "The Pavilion and surrounding Rice Quad also serve as host to various campus community events, such as concerts and student gatherings. The venue can be booked for events unrelated to the University, and it has been the setting for dinners and receptions.",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
