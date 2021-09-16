import 'package:flutter/material.dart';

class CategoriesModel {
  final IconData icon;
  final String name;
  final Color color;

  CategoriesModel({this.icon, this.name, this.color});
}

List<CategoriesModel> homeTiles = [
  CategoriesModel(name: 'Land', icon: Icons.landscape, color: Colors.cyan),
  CategoriesModel(name: 'Building', icon: Icons.home, color: Colors.teal),
  CategoriesModel(
      name: 'Office', icon: Icons.landscape, color: Colors.blueGrey),
  CategoriesModel(name: 'Farm', icon: Icons.landscape, color: Colors.grey),
];
