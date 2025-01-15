import 'package:flutter/material.dart';

class FavoriteIconButton extends StatefulWidget {
  @override
  _FavoriteIconButtonState createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton> {
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      color: _isFavorite ? Colors.red : Colors.black,
      onPressed: () {
        setState(() {
          _isFavorite = !_isFavorite; // Toggle the state
        });
        // Handle favorite action
      },
    );
  }
}
