import 'package:flutter/material.dart';
import 'package:flutter_farm_manage/home/tree/tree_screen.dart';
import 'home/row/add_new_row.dart';
import 'home/garden/addnew_garden_screen.dart';
import 'home/row/row_screen.dart';

import 'bottom_bar/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farm Manage',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/' : (ctx) => BottomTabsScreen(),
        RowScreen.routeName: (ctx) => RowScreen(),
        AddNewGardenScreen.routeName: (ctx) => AddNewGardenScreen(),
        AddNewRowScreen.routeName: (ctx) => AddNewRowScreen(),
        TreeScreen.routeName: (ctx) => TreeScreen()
      },
    );
  }
}

