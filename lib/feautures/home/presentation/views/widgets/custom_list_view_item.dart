

import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({
    super.key, required this.imageUrl,
   
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:NetworkImage(imageUrl),
                fit: BoxFit.cover),
            color: Colors.red,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
