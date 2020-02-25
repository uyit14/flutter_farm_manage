import 'package:flutter/material.dart';
class RowModel {
  final String id;
  final String name;
  final int numberTree;
  final String image;

  const RowModel({@required this.id, @required this.name, this.numberTree, this.image});
}