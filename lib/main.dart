import 'package:flutter/material.dart';


import 'package:netflix_clone/controller/bottomprovider.dart';
import 'package:netflix_clone/controller/provider.dart';
import 'package:netflix_clone/screens/splashscreen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NetflixProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Bottomprovider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        title: 'Netflixee',
        home: Splashscreen(),
      ),
    );
  }
}