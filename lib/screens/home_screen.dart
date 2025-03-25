import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 400,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/original/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.2),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/7/77/Stranger_Things_logo.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Season 4 now streaming',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          _buildActionButton(Icons.play_arrow, 'Play'),
                          const SizedBox(width: 10),
                          _buildActionButton