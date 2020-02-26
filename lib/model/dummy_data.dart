import 'package:flutter_farm_manage/model/tree.dart';

import 'garden.dart';
import 'row.dart';

const DUMMY_GARDEN = const [
  Garden(id: '1', name: "Garden 1", numberRow: 10, image: "garden.jpg"),
  Garden(id: '2', name: "Garden 2", numberRow: 9, image: "garden2.jpg"),
  Garden(id: '3', name: "Garden 3", numberRow: 8, image: "garden3.jpg"),
  Garden(id: '4', name: "Garden 4", numberRow: 10, image: "garden.jpg"),
  Garden(id: '5', name: "Garden 5", numberRow: 10, image: "garden.jpg"),
  Garden(id: '6', name: "Garden 6", numberRow: 10, image: "garden.jpg"),
  Garden(id: '7', name: "Garden 7", numberRow: 10, image: "garden.jpg"),
  Garden(id: '8', name: "Garden 8", numberRow: 10, image: "garden.jpg"),
  Garden(id: '9', name: "Garden 9", numberRow: 10, image: "garden.jpg"),
];

const DUMMY_ROW = const [
  RowModel(id: '1', name: "Row 1", numberTree: 10, image: "row.jpg", gardenId: "1"),
  RowModel(id: '2', name: "Row 2", numberTree: 9, image: "row.jpg", gardenId: "1"),
  RowModel(id: '3', name: "Row 3", numberTree: 8, image: "row.jpg", gardenId: "1"),
  RowModel(id: '4', name: "Row 4", numberTree: 10, image: "row.jpg", gardenId: "1"),
  RowModel(id: '5', name: "Row 5", numberTree: 10, image: "row.jpg", gardenId: "2"),
  RowModel(id: '6', name: "Row 6", numberTree: 10, image: "row.jpg", gardenId: "3"),
  RowModel(id: '7', name: "Row 7", numberTree: 10, image: "row.jpg", gardenId: "2"),
  RowModel(id: '8', name: "Row 8", numberTree: 10, image: "row.jpg", gardenId: "2"),
  RowModel(id: '9', name: "Row 9", numberTree: 10, image: "row.jpg", gardenId: "2"),
];

const DUMMY_TREE = const [
  TreeModel(id: '1', name: "Tree 1", numberFruit: 100, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "1"),
  TreeModel(id: '2', name: "Tree 2", numberFruit: 90, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "1"),
  TreeModel(id: '3', name: "Tree 3", numberFruit: 80, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "1"),
  TreeModel(id: '4', name: "Tree 4", numberFruit: 70, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "1"),
  TreeModel(id: '5', name: "Tree 5", numberFruit: 60, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "1"),
  TreeModel(id: '6', name: "Tree 6", numberFruit: 500, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "2"),
  TreeModel(id: '7', name: "Tree 7", numberFruit: 400, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "2"),
  TreeModel(id: '8', name: "Tree 8", numberFruit: 30, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "2"),
  TreeModel(id: '9', name: "Tree 9", numberFruit: 20, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "3"),
  TreeModel(id: '10', name: "Tree 10", numberFruit: 65, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "3"),
  TreeModel(id: '11', name: "Tree 11", numberFruit: 55, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "3"),
  TreeModel(id: '12', name: "Tree 12", numberFruit: 75, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "4"),
  TreeModel(id: '13', name: "Tree 13", numberFruit: 95, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "4"),
  TreeModel(id: '14', name: "Tree 14", numberFruit: 35, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "5"),
  TreeModel(id: '15', name: "Tree 15", numberFruit: 45, images: ["tree.jpg", "tree.jpg", "tree.jpg"], rowId: "6"),
];