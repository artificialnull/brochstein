import 'package:flutter/material.dart';

abstract class BrochsteinPage extends StatefulWidget {
  String _name;
  BrochsteinPage(this._name);
  String name() => _name;
}