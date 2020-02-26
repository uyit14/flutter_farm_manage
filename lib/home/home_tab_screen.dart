import 'package:flutter/material.dart';
import 'package:flutter_farm_manage/model/garden.dart';
import '../model/dummy_data.dart';
import 'garden/garden_item.dart';

class HomeTabScreen extends StatefulWidget {
  @override
  _HomeTabScreenState createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List<Garden> _gardens = DUMMY_GARDEN;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      scrollDirection: Axis.vertical,
      itemCount: _gardens.length,
      padding: EdgeInsets.all(8),
      itemBuilder: (_, index) => GardenItem(_gardens[index].id,
          _gardens[index].name,
          _gardens[index].numberRow,
          _gardens[index].image,
          index),
    );
  }
}
