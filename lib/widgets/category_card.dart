// widgets/category_card.dart
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final VoidCallback? onTap;

  const CategoryCard({
    Key? key,
    this.imageUrl,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: NetworkImage(
                    imageUrl ?? 'https://via.placeholder.com/150x225',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          if (title != null) ...[
            SizedBox(height: 8),
            Text(
              title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}