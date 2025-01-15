import 'package:flutter/material.dart';

class Promotion extends StatefulWidget {
  const Promotion({super.key});

  @override
  State<Promotion> createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'promotion'

        ),
      ),
      body: Center(
        child: Text('promotion',
    style: TextStyle(color: Colors.black87,
    fontSize: 20)
      ),
    ));
  }
}
