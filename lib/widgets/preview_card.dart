// widgets/preview_card.dart
import 'package:flutter/material.dart';

class PreviewCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://via.placeholder.com/800x450',
          width: double.infinity,
          height: 500,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      // primary: Colors.black,
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow),
                    label: Text('Play'),
                  ),
                  SizedBox(width: 10),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[700],
                      // primary : Colors.white,
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.info_outline),
                    label: Text('Info'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}