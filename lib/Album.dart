import 'package:brochstein/BrochsteinPage.dart';
import 'package:flutter/material.dart';

class Album extends BrochsteinPage {
  Album() : super("Album");

  @override
  State<StatefulWidget> createState() {
    return AlbumState();
  }
}

class AlbumState extends State<Album> {
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
                  Image.asset('assets/images/album_geometric.jpg'),
                  Padding(
                      padding: EdgeInsets.only(
                          top: 16.0, bottom: 24.0, left: 16.0, right: 16.0),
                      child: Text(
                        "This image highlights the Pavilion's sharp, unapologetic sense of shape. The hard corners of the structure give the impression of something strong and unyielding - something that will stand the test of time.",
                        style: TextStyle(fontSize: 16.0),
                      ))
                ],
              )),
          Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/images/album_shade.jpg'),
                  Padding(
                      padding: EdgeInsets.only(
                          top: 16.0, bottom: 24.0, left: 16.0, right: 16.0),
                      child: Text(
                        "This photograph demonstrates the utility of the Pavilion's aluminum lattice shade. While the sun might normally create glare in a photo, the lattice shade filters out much of the light, allowing for a clear picture.",
                        style: TextStyle(fontSize: 16.0),
                      ))
                ],
              )),
          Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/images/album_seating.jpg'),
                  Padding(
                      padding: EdgeInsets.only(
                          top: 16.0, bottom: 24.0, left: 16.0, right: 16.0),
                      child: Text(
                        "This image depicts the abundant amount of seating available within the Pavilion. The area is well lit by natural light and the space is open and undivided, an atmosphere which encourages communication between individuals and groups.",
                        style: TextStyle(fontSize: 16.0),
                      ))
                ],
              ))
        ]));
  }
}
