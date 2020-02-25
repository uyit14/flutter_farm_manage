import 'package:flutter/material.dart';
import 'package:flutter_farm_manage/home/garden_item.dart';
import 'package:flutter_farm_manage/model/garden.dart';
import '../model/dummy_data.dart';

class HomeTabScreen extends StatefulWidget {
  @override
  _HomeTabScreenState createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List<Garden> _gardens = DUMMY_GARDEN;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: _gardens.length,
        itemBuilder: (ctx, index) => GardenItem(
            _gardens[index].id,
            _gardens[index].name,
            _gardens[index].numberRow,
            _gardens[index].image,
            index));
  }
}
