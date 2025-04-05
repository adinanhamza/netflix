import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_clone/screens/widgets/whopage.dart';


class ProfilePage extends StatelessWidget {
   ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title:Text("Who's watching?",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        
        
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child:
            Text("Edit",style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),),

          )
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WhoContainer(
                    context: context,
                    texts: 'Jhon',
                    ht: 100,
                    wi: 100,
                    imagePath: 'assets/avatar1.png'),
                WhoContainer(
                    context: context,
                    ht: 100,
                    wi: 100,
                    imagePath: 'assets/avatarnew2.png',
                    texts: 'Saniya'),
              ],
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WhoContainer(
                    context: context,
                    ht: 100,
                    wi: 100,
                    imagePath: 'assets/avatar3.png',
                    texts: 'Abraham'),
                WhoContainer(
                    context: context,
                    ht: 100,
                    wi: 100,
                    imagePath: 'assets/avatar4.jpg',
                    texts: 'Richie'),
              ],
            ),
          ),
          Gap(20),
          WhoContainer(
              context: context,
              ht: 100,
              wi: 100,
              imagePath: 'assets/avatar5.jpeg',
              texts: 'Kids'),
        ],
      )),
    );
  }
}