import 'package:flutter/material.dart';
import 'loginPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'lib/assets/d3.jpg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140,left: 100),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Travel",
                    style: TextStyle(
                      fontFamily: 'lib/fonts/lalezar-Regular.ttf',
                      color: Colors.pinkAccent,
                      fontSize: 60,

                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(1.0,1.0),
                          blurRadius: 2.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: " app",
                    style: TextStyle(

                      color: Colors.white, // White color for "app"
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),



          Padding(
            padding: const EdgeInsets.only(top: 400.0),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(


                  child: Text(
                    "Let's Enjoy The World",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 4.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Center(
                    child: Text(
                      "Explore new places in the world.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 4.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Center(
                    child:OutlinedButton(
                      style: OutlinedButton.styleFrom(

                        side: BorderSide(color: Colors.white, width: 3), // Border color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Login()),);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Let's Start",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 33,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          SizedBox(width: 8), // Space between text and icon
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 44,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}