import 'package:flutter/material.dart';
import 'package:flutter_farm_manage/home/row/row_screen.dart';

class GardenItem extends StatelessWidget {
  final String id;
  final String name;
  final int numberRow;
  final String image;
  final int index;

  GardenItem(this.id, this.name, this.numberRow, this.image, this.index);

  void selectGarden(BuildContext context) {
    Navigator.of(context).pushNamed(RowScreen.routeName, arguments: {'id' : id});
  }

  @override
  Widget build(BuildContext context) {
    final imageAddress = "assets/images/";
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fontSize = screenWidth * 0.04;
    final sizeBox = screenWidth * 0.12;
    return InkWell(
      onTap: () => selectGarden(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        margin: EdgeInsets.all(8),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imageAddress + image,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    color: Color(0xFF0E3311).withOpacity(0.5),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                height: sizeBox,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(height: 4,),
                    Text(
                      numberRow.toString() + " Row",
                      style:
                          TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
