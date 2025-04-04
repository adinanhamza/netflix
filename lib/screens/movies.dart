import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MoviePage extends StatelessWidget {
  String? title;
  MoviePage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Provider.of<movieProvider>(context, listen: false).movie();
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? ''),
      ),
      body: Consumer<movieProvider>(builder: (context, value, child) {  
          return ListView.builder(
              itemCount: value.movies.length,
              itemBuilder: (context, index) {
                final data = value.movies[index];
                return Container(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: CachedNetworkImage(
                            errorWidget: (context, url, error) {
                              return const Center(
                                child: Icon(Icons.error_outline),
                              );
                            },
                            placeholder: (context, url) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            imageUrl:
                                'https://image.tmdb.org/t/p/w500/${data.backdroppath}'),
                      ),
                      Positioned(
                        bottom: 60,
                        left: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("NETFLIX ",style: style()),
                            Text("ORIGINAL",style: TextStyle(
                              fontWeight: FontWeight.w400,
                            )),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 10,
                        child: Text(data.title??"",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 23,
                            )),
                      ),
                      Positioned(
                        bottom: 15,
                        right: 15,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle,
                              size: 50,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                );
              });
        }
      ),
    );
  }
}