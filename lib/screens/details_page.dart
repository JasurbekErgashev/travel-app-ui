import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage(
      {Key? key,
      required this.index,
      required this.placeName,
      required this.imagePaths,
      required this.location,
      required this.price,
      required this.distance,
      required this.ratings,
      required this.description})
      : super(key: key);
  final int index;
  final String placeName;
  final List<String> imagePaths;
  final String location;
  final String price;
  final String distance;
  final String ratings;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'cardImage$index',
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(imagePaths[0]),
        ),
      ),
    );
  }
}
