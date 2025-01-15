import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isFavorited = false;
  int _availableSeats = 6;
  final int _totalSeats = 10;
  double rating = 0;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    Future.delayed(Duration(seconds: 1), () {
      if (_availableSeats < _totalSeats) {
        setState(() {
          _availableSeats++;
        });
        //_startProgress();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = _availableSeats / _totalSeats;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Result',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white38,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            borderRadius: BorderRadius.circular(12.0), // Optional: for rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color
                spreadRadius: 2, // Spread radius of the shadow
                blurRadius: 5, // Blur radius of the shadow
                offset: Offset(0, 3), // Position of the shadow (x, y)
              ),
            ],
          ),

          padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        'lib/assets/dubai.jpg',
                        width: 630.0,
                        height: 270.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(
                        '🔥 Trending',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorited = !isFavorited;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isFavorited
                              ? Colors.red.withOpacity(0.2)
                              : Colors.white.withOpacity(0.6),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: isFavorited ? Colors.red : Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Text(
                        'Pro Agency 10% OFF',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 5, 16, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dubai - 5N/6 Days',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '20,000 \$',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                    child: Text(
                      'Manali - Kasol - Simla',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.bed_outlined, size: 24.0, color: Colors.black),
                      SizedBox(width: 10),
                      Icon(Icons.camera_alt, size: 24.0, color: Colors.black),
                      SizedBox(width: 10),
                      Icon(Icons.free_breakfast, size: 24.0, color: Colors.black),
                      SizedBox(width: 10),
                      Icon(Icons.room_service, size: 24.0, color: Colors.black),
                      SizedBox(width: 90),
                      Column(
                        children: [
                          Text(
                            'Available Seats: $_availableSeats / $_totalSeats',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 160,
                            height: 6,
                            child: LinearProgressIndicator(
                              value: progress,
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                              backgroundColor: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 400,
                    height: 150,
                    color: Colors.pink[100],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Barkat Agency',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image.asset(
                                'lib/assets/Mg.png',
                                width: 90.0,
                                height: 70.0,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 0),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                          child: Row(
                            children: [
                              Icon(Icons.location_on_outlined, size: 24),
                              Text(
                                'Chattogram, Bangladesh',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                          child: Row(
                            children: [
                              RatingBar.builder(
                                initialRating: rating,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 25,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (newRating) {
                                  setState(() {
                                    rating = newRating;
                                  });
                                },
                              ),
                              Text('(1.4K Review )'),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(35, 0, 5, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.remove_red_eye_outlined, size: 18),
                                    SizedBox(width: 8),
                                    Text('24'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 140,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pinkAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              // Your onPressed code here
                            },
                            child: Text(
                              'View Details',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 50,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.black, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {
                              // Your onPressed code here
                            },
                            child: Text(
                              'Book Now',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),

                  )

                ],

              ),

            ],

          ),

        ),




      ),

    );
  }}