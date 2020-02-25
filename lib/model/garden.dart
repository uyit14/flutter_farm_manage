import 'package:flutter/material.dart';
class Garden {
  final String id;
  final String name;
  final int numberRow;
  final String image;

  const Garden({@required this.id, @required this.name, this.numberRow, this.image});
}