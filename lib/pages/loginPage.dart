import 'package:flutter/material.dart';

import '../home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  Stack(
      fit: StackFit.expand,
      children: [

        Image.asset(
          'lib/assets/d3.jpg',
          fit: BoxFit.cover,
        ),
    Container(
    decoration: BoxDecoration(
    color: Colors.white.withOpacity(0.7), // Slightly transparent white for overlay
    borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(160),
    topRight: Radius.circular(160),
    ),
    ),
    child: SafeArea(
    child: Center(
    child: SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(height: 50),
    Container(
    decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    boxShadow: [
    BoxShadow(
    color: Colors.black.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 9,
    offset: Offset(0, 3),
    ),
    ],
    ),
    child: Image.asset(
    'lib/assets/world2.png',
    width: 180,
    color: Colors.pinkAccent,
    ),
    ),
    SizedBox(height: 30),
    Text(
    'Welcome back',
    style: TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(20),
    child: TextField(
    decoration: InputDecoration(
    hintText: 'Username',
    filled: true,
    fillColor: Colors.white,
    prefixIcon: Icon(Icons.person_rounded, color: Colors.black),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.yellow),
    ),
    ),
    ),
    ),
    SizedBox(height: 1),
    Padding(
    padding: const EdgeInsets.all(0),
    child: PasswordField(),
    ),
    SizedBox(height: 10),
    Text(
    'Forgot Password?',
    style: TextStyle(color: Colors.blue),
    ),
    SizedBox(height: 10),
    GestureDetector(
    onTap: () {

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Home()),
    );
    },
    child: Container(
    padding: const EdgeInsets.all(23),
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
    color: Colors.pinkAccent,
    borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
    'Sign In',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 17,
    ),
    ),
    ),
    ),
    Row(
    children: [
    Expanded(
    child: Divider(thickness: 0.7, color: Colors.yellow),
    ),
    Text('Or Continue with', style: TextStyle(fontWeight: FontWeight.bold)),
    Expanded(
    child: Divider(thickness: 0.7, color: Colors.yellow),
    ),
    ],
    ),
    SizedBox(height: 30),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Container(
    width: 60,
    decoration: BoxDecoration(
    color: Colors.white,
      shape: BoxShape.circle,


    ),
        child:Image.asset('lib/assets/google.png')),


            Container(
                width: 60,
              //  height: 90,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,),


                child: Image.asset('lib/assets/ios.png')),



    ],
    ),
    SizedBox(height: 30),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text('Not a member?', style: TextStyle(color: Colors.grey[700])),
    SizedBox(width: 12),
    Text('Register now', style: TextStyle(color: Colors.blue)),
    ],
    ),
    ],
    ),
    ),
    ),
    ),
    ),
    ],
    ),
    );
    }
    }

    class PasswordField extends StatefulWidget {
    @override
    _PasswordFieldState createState() => _PasswordFieldState();
    }

    class _PasswordFieldState extends State<PasswordField> {
    bool _isObscured = true; // State to toggle password visibility

    @override
    Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.all(18.0),
    child: TextField(
    obscureText: _isObscured, // Control visibility
    decoration: InputDecoration(
    hintText: 'Password..',
    filled: true, // Fill the background
    fillColor: Colors.white,
    prefixIcon: GestureDetector(
    onTap: () {
    setState(() {
    _isObscured = !_isObscured; // Toggle visibility
    });
    },
    child: Icon(
    _isObscured ? Icons.visibility_off : Icons.visibility, // Change icon based on state
    color: Colors.black,
    ),
    ),
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.yellow),
    ),
    ),
    ),
    );
    }
    }
