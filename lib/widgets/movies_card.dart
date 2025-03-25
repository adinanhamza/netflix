// widgets/movie_card.dart
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/movie_details.dart';

class MovieCard extends StatelessWidget {
  final bool isLarge;

  MovieCard({this.isLarge = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(
              title: 'Movie Title',
              imageUrl: 'https://via.placeholder.com/300x450',
              description: 'This is a movie description that explains what the movie is about.',
              rating: 7.5,
            ),
          ),
        );
      },
      child: Container(
        width: isLarge ? 150 : 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(
            image: NetworkImage('https://via.placeholder.com/300x450'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}