import 'dart:typed_data';

import 'package:flutter/material.dart';

class CatsPhotoFactWidget extends StatelessWidget {
  const CatsPhotoFactWidget({
    super.key,
    required this.catFact,
    required this.catImage,
  });

  final String catFact;
  final Uint8List catImage;

  static const spaces = SizedBox(height: 34.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Center(
            child: Image.memory(catImage),
          ),
        ),
        spaces,
        Container(
          width: 300,
          height: 150,
          color: Colors.cyanAccent,
          child: Center(
            child: Text(
              catFact,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
