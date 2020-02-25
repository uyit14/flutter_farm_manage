import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  static const routeName = '/row-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rows"),),
      body: Container(
        child: Text("Row screen"),
      ),
    );
  }
}
