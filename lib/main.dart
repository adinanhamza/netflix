// main.dart
import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/category_screens.dart';
import 'package:netflix_clone/screens/my_list.dart';
import 'package:netflix_clone/screens/profile_screens.dart';
import 'package:netflix_clone/screens/search_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      // Add this to main.dart
routes: {
  '/home': (context) => HomeScreen(),
  '/search': (context) => SearchScreen(),
  '/profiles': (context) => ProfilesScreen(),
  '/mylist': (context) => MyListScreen(),
  '/category': (context) => CategoryScreen(categoryName: 'Action'),
},
    );
  }
}