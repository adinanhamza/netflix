// screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/movies_card.dart';
import 'package:netflix_clone/widgets/preview_card%20copy.dart';
import '../widgets/app_bar.dart';


import '../widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PreviewCard(),
            SizedBox(height: 10),
            MovieRow(title: "Popular on Netflix", isLarge: true),
            MovieRow(title: "Trending Now"),
            MovieRow(title: "Watch Again"),
            MovieRow(title: "New Releases"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class MovieRow extends StatelessWidget {
  final String title;
  final bool isLarge;

  MovieRow({required this.title, this.isLarge = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: isLarge ? 200 : 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return MovieCard(isLarge: isLarge);
            },
          ),
        ),
      ],
    );
  }
}