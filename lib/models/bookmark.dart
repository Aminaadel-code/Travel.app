import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookmarkButton extends StatefulWidget {
  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool _isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 0, left: 130.0, right: 5.0),

        child: GestureDetector(
        onTap: ()
    {
      setState(() {
        _isBookmarked = !_isBookmarked; // Toggle bookmark state
      });
    },
          child: SvgPicture.asset(
            "lib/assets/bookmark.svg",
            height: 25,
            width: 25,
            color: _isBookmarked ? Color(0xFFFFEE58):Colors.black54,

          ),
        ),
    );
  }
}