import 'package:flutter/material.dart';


// Hier wird die Kategorie erstellt, ein Model ist eine Klasse, die Daten enthält.
// Die Liste wird in der Home-Seite aufgerufen.
class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name, 
    required this.iconPath, 
    required this.boxColor
    });

  List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
      name: 'Salad',
      iconPath: 'assets/icons/plate.svg',
      boxColor: const Color(0xff92A3FD),
    ));

    categories.add(
      CategoryModel(
      name: 'Cake',
      iconPath: 'assets/icons/pancakes.svg',
      boxColor: const Color(0xffC588F2),
    ));

    categories.add(
      CategoryModel(
      name: 'Pie',
      iconPath: 'assets/icons/pie.svg',
      boxColor: const Color(0xff92A3FD),
    ));

    categories.add(
      CategoryModel(
      name: 'Smoothies',
      iconPath: 'assets/icons/orange-snacks.svg',
      boxColor: const Color(0xffC588F2),
    ));

    return categories;
  }
}