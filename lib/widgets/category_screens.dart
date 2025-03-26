// screens/category_screen.dart
import 'package:flutter/material.dart';
import '../widgets/app_bar.dart';
import '../widgets/category_card.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryName;

  CategoryScreen({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://via.placeholder.com/800x450?text=$categoryName',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.6,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CategoryCard();
                },
                childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}