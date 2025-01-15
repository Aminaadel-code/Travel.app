import 'package:flutter/material.dart';


class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
    required this.size,
    this.style,
    this.color,
    this.borderColor,
    this.borderRadius,
  });

  final VoidCallback onTap;
  final String title;
  final TextStyle? style;
  final Size size;
  final double? borderRadius;
  final Color? color;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStatePropertyAll(size),
        maximumSize: MaterialStatePropertyAll(size),
        padding: const MaterialStatePropertyAll(EdgeInsets.zero),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: borderColor != null
                ? BorderSide(color: borderColor!)
                : BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius ?? 4),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          color ?? Colors.pink,
        ),
      ),
      onPressed: onTap,
      child: Text(
        title,
        style: style ??
              TextStyle(

              color:Colors.pink,)
            ),

    );
  }
}