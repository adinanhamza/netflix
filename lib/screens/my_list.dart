// screens/my_list.dart
import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/movies_card.dart';
import '../widgets/app_bar.dart';


class MyListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: GridView.builder(
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