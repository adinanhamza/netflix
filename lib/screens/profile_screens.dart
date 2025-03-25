// screens/profiles_screen.dart
import 'package:flutter/material.dart';

class ProfilesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Who\'s watching?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                ProfileCard(name: 'User 1'),
                ProfileCard(name: 'User 2'),
                ProfileCard(name: 'Kids'),
                ProfileCard(name: 'Add Profile', isAdd: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final bool isAdd;

  ProfileCard({required this.name, this.isAdd = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (!isAdd) {
              Navigator.pushReplacementNamed(context, '/home');
            } else {
              // Handle add profile
            }
          },
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: isAdd ? Colors.grey[800] : Colors.red,
              borderRadius: BorderRadius.circular(4),
            ),
            child: isAdd
                ? Icon(Icons.add, color: Colors.white, size: 40)
                : null,
          ),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}