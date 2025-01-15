import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 90.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.pinkAccent,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('lib/assets/img5.jpg'),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                'mimi32',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.yellow,
              thickness: 2.0,
            ),
            SizedBox(height: 10.0),

            // Email section
            ListTile(
              leading: Icon(Icons.email, color: Colors.pinkAccent),
              title: Text('mimi32@gmail.com', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle email tap
              },
            ),
            Divider(height: 20.0),


            ListTile(
              leading: Icon(Icons.location_on, color: Colors.pinkAccent),
              title: Text('123 Street , Dammam', style: TextStyle(fontSize: 18)),
              onTap: () {
                // Handle address tap
              },
            ),

            Divider(height: 20.0),


            ListTile(
              leading: Icon(Icons.settings, color: Colors.pinkAccent),
              title: Text('Settings', style: TextStyle(fontSize: 18)),
              onTap: () {

              },
            ),
            Divider(height: 20.0),

            ListTile(
              leading: Icon(Icons.help, color: Colors.pinkAccent),
              title: Text('FAQ', style: TextStyle(fontSize: 18)),
              onTap: () {

              },
            ),
            Divider(height: 20.0),


            ListTile(
              leading: Icon(Icons.logout, color: Colors.pinkAccent),
              title: Text('Logout', style: TextStyle(fontSize: 18)),
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}