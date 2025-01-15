import 'package:flutter/material.dart';
import 'package:pro3/pages/StoryPage.dart';
import 'package:pro3/pages/profile.dart';
import 'package:pro3/pages/promotion.dart';
import 'package:pro3/pages/share.dart';

import 'package:pro3/pages/deshboard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro3/models/PostPopup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    share(),
    Promotion(),
    Profile(),
  ];

  bool animate = false; // Start with false to keep the popup hidden

  void toggleAnimation() => setState(() => animate = !animate);

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageStorage(
            child: currentScreen,
            bucket: bucket,
          ),
          // Overlay PostPopup
          PostPopup(animate: animate),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: !animate
              ? null
              : Border.all(
            width: 2,
            color: Colors.white,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: const Offset(0, 12),
              color: Colors.white,
            ),
          ],
        ),
        child: InkWell(
          onTap: toggleAnimation,
          child: CircleAvatar(
            radius: 26,
            backgroundColor: Colors.pinkAccent,
            child: Center(
              child: Icon(Icons.add),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "lib/assets/home.svg",
                          height: 25,
                          width: 25,
                          color: currentTab == 0 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = share();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "lib/assets/wifi.svg",
                          height: 25,
                          width: 25,
                          color: currentTab == 1 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Promotion();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "lib/assets/dis.svg",
                          height: 25,
                          width: 25,
                          color: currentTab == 2 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'Promotion',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_circle,
                          color: currentTab == 3 ? Colors.black : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.black : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
