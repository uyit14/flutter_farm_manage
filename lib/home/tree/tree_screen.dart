import 'package:flutter/material.dart';
import '../../home/tree/tree_item.dart';
import '../../model/dummy_data.dart';
import '../../model/tree.dart';

class TreeScreen extends StatefulWidget {
  static const routeName = '/tree-screen';

  @override
  _TreeScreenState createState() => _TreeScreenState();
}

class _TreeScreenState extends State<TreeScreen> {
  List<TreeModel> _trees = DUMMY_TREE;
  List<TreeModel> _treesFilter;
  String rowId;

  @override
  void didChangeDependencies() {
    final routeArgs =
    ModalRoute.of(context).settings.arguments as Map<String, String>;
    rowId = routeArgs['id'];
    _treesFilter = _trees.where((rowModel) => rowModel.rowId.toLowerCase().contains(rowId.toLowerCase())).toList();
    super.didChangeDependencies();
  }

  Widget _checkListRows(){
    if(_treesFilter.length > 0){
      return ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: _treesFilter.length,
          itemBuilder: (ctx, index) => TreeItem(
              _treesFilter[index].id,
              _treesFilter[index].name,
              _treesFilter[index].numberFruit,
              _treesFilter[index].images,
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
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Trees"),),
      body: _checkListRows(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        splashColor: Colors.yellow[400],
        onPressed: (){print("AA");},
        child: Icon(Icons.add, color: Colors.white, size: 32,),
      ),
    );
  }
}
