import 'package:flutter/material.dart';
import 'package:flutter_farm_manage/home/row/row_screen.dart';
import 'package:flutter_farm_manage/home/tree/tree_screen.dart';

class RowItem extends StatelessWidget {
  final String id;
  final String name;
  final int numberRow;
  final String image;
  final int index;

  RowItem(this.id, this.name, this.numberRow, this.image, this.index);

  void selectRow(BuildContext context) {
    Navigator.of(context).pushNamed(TreeScreen.routeName, arguments: {'id': id});
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageAddress = "assets/images/";
    return InkWell(
      onTap: () => selectRow(context),
      child: Container(
        height: screenWidth / 2,
        margin: EdgeInsets.only(bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              flex: 7,
              child: ClipRRect(
                child: Image.asset(imageAddress + image, fit: BoxFit.cover, height: double.infinity, width: double.infinity,),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: index % 2 == 0 ? Colors.green : Colors.blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      numberRow.toString() + " Tree",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
