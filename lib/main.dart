import 'package:brochstein/Album.dart';
import 'package:brochstein/BasicInfo.dart';
import 'package:brochstein/BrochsteinPage.dart';
import 'package:brochstein/PhotoInfo.dart';
import 'package:brochstein/Plans.dart';
import 'package:brochstein/Purpose.dart';
import 'package:flutter/material.dart';

import 'Experiences.dart';
import 'Surroundings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Scavenger Hunt',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _pages = <BrochsteinPage>[
    BasicInfo(),
    Purpose(),
    Plans(),
    PhotoInfo(),
    Surroundings(),
    Experiences(),
    Album()
  ];
  var _home = 0;

  void setPage(int index) {
    setState(() {
      _home = index;
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(_pages[_home].name()),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: List<Widget>.generate(
              _pages.length + 1,
              (int index) => index > 0
                  ? ListTile(
                      title: Text(_pages[index - 1].name()),
                      dense: true,
                      onTap: () => setPage(index - 1),
                    )
                  : DrawerHeader(
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Brochstein Pavilion",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  ExactAssetImage('assets/images/header.jpg'),
                              fit: BoxFit.fitWidth)))),
        ),
      ),
      body: _pages.length > _home ? _pages[_home] : Container(),
    );
  }
}
