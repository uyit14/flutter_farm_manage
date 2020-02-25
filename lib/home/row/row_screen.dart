import 'package:flutter/material.dart';
import 'package:flutter_farm_manage/model/dummy_data.dart';
import 'package:flutter_farm_manage/model/row.dart';

import 'row_item.dart';

class RowScreen extends StatefulWidget {
  static const routeName = '/row-screen';

  @override
  _RowScreenState createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {
  List<RowModel> _rows = DUMMY_ROW;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rows"),),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: _rows.length,
          itemBuilder: (ctx, index) => GardenItem(
              _rows[index].id,
              _rows[index].name,
              _rows[index].numberTree,
              _rows[index].image,
              index)),
    );
  }
}
