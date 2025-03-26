// screens/movie_detail.dart
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/home_screen.dart';
import '../widgets/app_bar.dart';

class MovieDetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final double rating;

  MovieDetailScreen({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  imageUrl,
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          Text('My List', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          // primary: Colors.white,
                          // onPrimary: Colors.black,
                        ),
                        onPressed: () {},
                        icon: Icon(Icons.play_arrow),
                        label: Text('Play'),
                      ),
                      Column(
                        children: [
                          Icon(Icons.info_outline, color: Colors.white),
                          Text('Info', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '${rating.toStringAsFixed(1)}/10',
                        style: TextStyle(color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '2023',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text(
                          'HD',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    description,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Cast: Chris Pratt, Zoe Saldana, Dave Bautista',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  MovieRow(title: "More Like This"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}