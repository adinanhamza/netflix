import 'package:flutter/material.dart';
import 'package:icony/icony.dart';
import 'package:netflix_clone/view/home_screen.dart';

Widget WhoContainer({
  required BuildContext context,
  required double ht,
  required double wi,
  required String imagePath,
  required String texts,
}) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (ctx) => Homescreen()));
        },
        child: Container(
          height: ht,
          width: wi,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Ensure the image covers the container
            ),
          ),
        ),
      ),
      Text(texts, 
      overflow: TextOverflow.ellipsis,
      maxLines: 2
      ,style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: Colors.white,

      ),),
         ],
  );
}