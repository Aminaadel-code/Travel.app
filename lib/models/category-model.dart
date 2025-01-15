// import 'package:flutter/material.dart';

class CategortModel{

  final String name;
  final String iconPath;
  final bool active;

  CategortModel({required this.name , required this.iconPath , required this.active});

}

List  categortyData = [

  CategortModel(name: 'Holiday',iconPath: "lib/assets/holiday.svg", active: true),

  CategortModel(name: 'Rantal',iconPath: "lib/assets/key 1.svg" , active:  false),
  CategortModel(name:'Travel Partner' ,iconPath: "lib/assets/travel.svg" , active:  false ),
  CategortModel(name: 'Hotels',iconPath: "lib/assets/hotal.svg", active:  false ),
];