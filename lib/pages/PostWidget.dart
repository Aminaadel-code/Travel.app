import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/bookmark.dart';
import '../models/fav.dart';
import 'package:pro3/models/postmodel.dart';


class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450.0,
      height: 480.0,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,

        border: Border.all(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(20.0),
        // Optional: rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          UserInfo(),
          SizedBox(height: 8.0),
          Text(
            'Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage.',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset(
              'lib/assets/img4.jpeg',
              width: 430.0,
              height: 230.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FavoriteIconButton(),
              IconButton(
                icon: Icon(Icons.comment),
                onPressed: () {
                  // Handle comment action
                },
              ),
              IconButton(
                icon: Icon(Icons.share_outlined),
                onPressed: () {
                  // Handle share action
                },
              ),
              BookmarkButton(),

            ],
          ),
        ],
      ),
    );
  }
}



class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool isFollowed = false;

  void toggleFollow() {
    setState(() {
      isFollowed = !isFollowed; // Toggle the follow state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.pinkAccent,
              width: 2.0,
            ),
          ),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('lib/assets/img5.jpg'),
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'mimi32',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Suggested for you',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: toggleFollow,
                    child: Text(isFollowed ? 'Unfollow' : 'Follow'),
                    style: ElevatedButton.styleFrom(
                      primary: isFollowed ? Colors.red : Colors.pinkAccent,
                      onPrimary: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Icon(
                    Icons.more_vert_rounded,
                    size: 24.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
