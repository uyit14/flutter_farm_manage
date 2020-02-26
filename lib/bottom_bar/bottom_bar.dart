import 'package:flutter/material.dart';
import '../cost/cost_tab_screen.dart';
import '../home/home_tab_screen.dart';
import '../home/garden/addnew_garden_screen.dart';

class BottomTabsScreen extends StatefulWidget {
  @override
  _BottomTabsScreenState createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': HomeTabScreen(), 'title': 'Home'},
    {'page': CostTabScreen(), 'title': 'Cost'}
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        splashColor: Colors.yellow[400],
        onPressed: (){Navigator.of(context).pushNamed(AddNewGardenScreen.routeName);},
        child: Icon(Icons.add, color: Colors.white, size: 32,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.green[300],
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.yellow,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.home),
              title: Text('Home')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.monetization_on),
              title: Text('Cost')),
        ],
      ),
    );
  }
}
