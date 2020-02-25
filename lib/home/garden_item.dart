import 'package:flutter/material.dart';
import 'package:flutter_farm_manage/home/row/row_screen.dart';

class GardenItem extends StatelessWidget {
  final String id;
  final String name;
  final int numberRow;
  final String image;
  final int index;

  GardenItem(this.id, this.name, this.numberRow, this.image, this.index);

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(RowScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(name),
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}