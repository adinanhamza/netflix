 import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/movies_card.dart';

Widget _buildPopularMoviesSection(String  label,) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 8),
            itemCount: _popularMovies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: MovieCard(movie: _popularMovies[index]),
              );
            },
          ),
        ),
      ],
    );
  }