import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro3/models/story_model.dart';
import 'package:pro3/pages/Search page.dart';
import 'PostWidget.dart';

class Storypage extends StatelessWidget {
  const Storypage({super.key});

  @override
  Widget build(BuildContext context) {

   // final List<Story> items = [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'The Holiday',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            height: 1.5,
            fontSize: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SvgPicture.asset(
              "lib/assets/sent.svg",
              height: 25,
              width: 25,
            ),
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SvgPicture.asset(
              "lib/assets/elements.svg",
              height: 25,
              width: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final story = items[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 190,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: index == 0 ? Border.all(color: Colors.black54, width: 2) : null,
                      ),
                      child: index == 0
                          ? GestureDetector(
                        onTap: () {
                          // Navigate to the search page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchPage()),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.add, color: Colors.white, size: 30),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Add Story', // Placeholder text
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                letterSpacing: 1.5,
                              //  fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                          : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              story.img,
                              fit: BoxFit.cover,
                              height: 150,
                              width: 100,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            story.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              letterSpacing: 1.5,
                             // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40),
            PostWidget(),
            SizedBox(height: 13),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}
