import 'package:flutter/material.dart';
import 'TextButtonWidget.dart';

class PostPopup extends StatelessWidget {
  const PostPopup({super.key, required this.animate});

  final bool animate;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 150),
      bottom: animate ? 100 : 0,
      left: MediaQuery.sizeOf(context).width * .08,
      right: MediaQuery.sizeOf(context).width * .08,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 150),
        scale: animate ? 1 : 0,
        child: Container(
          width: 315,
          height: 160,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black45,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: ClipPath(
            clipper: CenterClip(),
            child: Container(
              width: 315,
              height: 160,
              color: Colors.white, // Fixed missing comma
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upload New Post",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Click “+” Icon to create new post",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButtonWidget(
                        onTap: () {
                          // Implement functionality here
                        },
                        size: const Size(150, 40),
                        borderRadius: 80,
                        style: TextStyle(color: Colors.white ,fontSize: 20),
                        title: 'Regular post',
                      ),
                      TextButtonWidget(
                        onTap: () {
                          // Implement functionality here
                        },
                        size: const Size(150, 40),
                        borderColor: Colors.pink,
                        color: Colors.white,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.pinkAccent,
                        ),
                        borderRadius: 100,
                        title: 'Partner post',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CenterClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(15, 0);
    path.lineTo(size.width - 15, 0);

    path.quadraticBezierTo(
      size.width,
      0,
      size.width,
      15,
    );

    path.lineTo(size.width, size.height - 15 - 12);

    path.quadraticBezierTo(
      size.width,
      size.height - 12,
      size.width - 15,
      size.height - 12,
    );

    path.lineTo(size.width / 2 + 12, size.height - 12);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 2 - 12, size.height - 12);

    path.lineTo(15, size.height - 12);

    path.quadraticBezierTo(
      0,
      size.height - 12,
      0,
      size.height - 12 - 15,
    );
    path.lineTo(0, 15);

    path.quadraticBezierTo(
      0,
      0,
      15,
      0,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
