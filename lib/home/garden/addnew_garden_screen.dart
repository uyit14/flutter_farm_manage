import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddNewGardenScreen extends StatefulWidget {
  static const routeName = '/addnew-garden-screen';

  @override
  _AddNewGardenScreenState createState() => _AddNewGardenScreenState();
}

class _AddNewGardenScreenState extends State<AddNewGardenScreen> {
  File file;
  int counter = 0;
  TextEditingController _editingController = TextEditingController();
  String _errorText;
  void _choose(int type) async {
    switch(type){
      case 1:
        file = await ImagePicker.pickImage(source: ImageSource.camera);
        break;
      case 2:
        file = await ImagePicker.pickImage(source: ImageSource.gallery);
        break;
      default:
        break;
    }
    setState(() {
      //
    });
  }

  void _counter(int type){
    switch(type){
      case 1:
        counter++;
        break;
      case 2:
        if(counter>0)
        counter--;
        break;
      default:
        break;
    }
    setState(() {
      //
    });
  }

  void _onAddGarden(){
    if(_editingController.text.isEmpty){
      _errorText = "Garden name must not be blank!";
      setState(() {

      });
      return;
    }else{
      _errorText = null;
      setState(() {

      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final sizeBoxHeight = screenHeight > screenWidth ? screenHeight * 0.02 : screenWidth*0.02;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add new garden"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: screenHeight > screenWidth ? screenHeight*0.3 : screenWidth*0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: file==null ? Image.asset(
                  "assets/images/no_image.png",
                  fit: BoxFit.cover,
                ) : Image.file(file, fit: BoxFit.cover,),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: screenWidth * 0.45,
                    height: screenHeight > screenWidth ? screenHeight*0.05 : screenWidth*0.05,
                    child: InkWell(
                      onTap:() =>  _choose(1),
                      splashColor: Colors.yellow,
                      child: Card(
                        elevation: 10,
                        child: Icon(Icons.camera_alt),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.45,
                    height: screenHeight > screenWidth ? screenHeight*0.05 : screenWidth*0.05,
                    child: InkWell(
                      onTap:() =>  _choose(2),
                      splashColor: Colors.yellow,
                      child: Card(
                        elevation: 10,
                        child: Icon(Icons.photo_library),
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: sizeBoxHeight,
            ),
            TextFormField(
              controller: _editingController,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  labelText: 'Add new Garden',
                  fillColor: Colors.white,
                  errorText: _errorText,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            SizedBox(
              height: sizeBoxHeight,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Number of row",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    width: screenWidth / 3,
                  ),
                  InkWell(
                    onTap: () =>  _counter(2),
                    child: Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                  Text(
                    counter.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () =>  _counter(1),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 28,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            InkWell(
              onTap:() => _onAddGarden(),
              splashColor: Colors.yellow,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Center(
                    child: Text(
                  "Add Garden",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        splashColor: Colors.yellow[400],
        onPressed: (){Navigator.of(context).pushNamed(AddNewGardenScreen.routeName);},
        child: Icon(Icons.add, color: Colors.white, size: 32,),
      ),
    );
  }
}
