import 'package:flutter/material.dart';
class TreeModel {
  final String id;
  final String name;
  final int numberFruit;
  final List<String> images;
  final String rowId;

  const TreeModel({@required this.id, @required this.name, this.numberFruit, this.images, this.rowId});
}