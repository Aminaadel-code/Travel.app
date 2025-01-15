import 'package:flutter/material.dart';
import 'package:pro3/pages/Firstpage.dart';

void main() {
  runApp (MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      //home: Home(),
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
