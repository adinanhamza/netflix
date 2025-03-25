// screens/search_screen.dart
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/movie_card.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> recentSearches = ['Stranger Things', 'The Witcher', 'Ozark'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextField(
          controller: _searchController,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search for a show, movie, genre, etc.',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Handle search
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.mic, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: _searchController.text.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Recent Searches',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: recentSearches.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.history, color: Colors.grey),
                        title: Text(
                          recentSearches[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(Icons.clear, color: Colors.grey),
                      );
                    },
                  ),
                ),
              ],
            )
          : GridView.builder(
              padding: EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return MovieCard();
              },
            ),
    );
  }
}