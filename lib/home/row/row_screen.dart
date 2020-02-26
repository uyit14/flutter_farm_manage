import 'package:flutter/material.dart';
import '../../home/row/add_new_row.dart';
import '../../model/dummy_data.dart';
import '../../model/row.dart';

import 'row_item.dart';

class RowScreen extends StatefulWidget {
  static const routeName = '/row-screen';

  @override
  _RowScreenState createState() => _RowScreenState();
}

class _RowScreenState extends State<RowScreen> {
  List<RowModel> _rows = DUMMY_ROW;
  List<RowModel> _rowsFilter;
  String gardenId;

  @override
  void didChangeDependencies() {
    final routeArgs =
    ModalRoute.of(context).settings.arguments as Map<String, String>;
    gardenId = routeArgs['id'];
   _rowsFilter = _rows.where((rowModel) => rowModel.gardenId.toLowerCase().contains(gardenId.toLowerCase())).toList();
    super.didChangeDependencies();
  }

  Widget _checkListRows(){
    if(_rowsFilter.length > 0){
      return ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: _rowsFilter.length,
          itemBuilder: (ctx, index) => RowItem(
              _rowsFilter[index].id,
              _rowsFilter[index].name,
              _rowsFilter[index].numberTree,
              _rowsFilter[index].image,
              index));
    }else{
      return Center(
        child: Text("No data", style: TextStyle(fontSize: 28),),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rows"),),
      body: _checkListRows(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        splashColor: Colors.yellow[400],
        onPressed: (){Navigator.of(context).pushNamed(AddNewRowScreen.routeName);},
        child: Icon(Icons.add, color: Colors.white, size: 32,),
      ),
    );
  }
}
